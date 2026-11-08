
#include "compat.h"
#include "kplib.h"

struct icon {
    int32_t width,height;
    intptr_t *pixels;
    unsigned char *mask;
};

int writeicon(FILE *fp, struct icon *ico)
{
    int i;

    Bfprintf(fp,
        "#include \"sdl_inc.h\"\n"
        "#include \"sdlappicon.h\"\n"
        "\n"
    );
    Bfprintf(fp,"static Uint8 sdlappicon_pixels[] = {\n");
    for (i=0;i<ico->width*ico->height;i++) {
        // SDL consumes this as width*height packed 32-bit pixels through a
        // Uint8 pointer. Emit each packed pixel as its four little-endian bytes.
        uint32_t pixel = (uint32_t)B_LITTLE32((uint32_t)ico->pixels[i]);
        if ((i%4) == 0) Bfprintf(fp,"\t");
        Bfprintf(fp, "0x%02x, 0x%02x, 0x%02x, 0x%02x,",
                 (unsigned)(pixel & 0xffu),
                 (unsigned)((pixel >> 8) & 0xffu),
                 (unsigned)((pixel >> 16) & 0xffu),
                 (unsigned)((pixel >> 24) & 0xffu));
        if ((i%4) == 3 || i == ico->width*ico->height-1) Bfprintf(fp,"\n");
        else Bfprintf(fp," ");
    }
    Bfprintf(fp, "};\n\n");

    Bfprintf(fp,
        "struct sdlappicon sdlappicon = {\n"
        "    %d,%d,    // width,height\n"
        "    sdlappicon_pixels\n"
        "};\n",
        ico->width, ico->height
    );

    return 0;
}

int main(int argc, char **argv)
{
    struct icon icon;

    if (argc<2) {
        Bfprintf(stderr, "generateicon <picture file>\n");
        return 1;
    }

    memset(&icon, 0, sizeof(icon));

    engineCreateAllocator();
    kpzload(argv[1], (intptr_t*)&icon.pixels, &icon.width, &icon.height);
    if (!icon.pixels) {
        Bfprintf(stderr, "Failure loading %s\n", argv[1]);
        return 1;
    }

    writeicon(stdout, &icon);

    xfree(icon.pixels);

    return 0;
}
