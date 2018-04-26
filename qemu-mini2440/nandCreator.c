
#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[])
{
	FILE *fp;
	long i;
	unsigned char buf[4096];
	long size;
	int write_size;
	int oob_size;
	char name[128];
	int ret;

	strcpy(name, "nand.bin");

	size = 128; /* MB */

	write_size = 2048; /* Byte */

	oob_size = 64; /* Byte */

	size = size * 1024 * 1024 / write_size * (write_size + oob_size);

	fp = fopen(name, "wb");
	if (fp) {
		for (i = 0; i < sizeof(buf); i++) {
			buf[i] = 0xFF;
		}

		for (i = 0; i < size/sizeof(buf); i++) {
			fwrite(buf, sizeof(buf), 1, fp);
		}

		fwrite(buf, size%sizeof(buf), 1, fp);

		fclose(fp);

		printf("create %s success\n", name);

	} else {
		printf("failed to create %s\n", name);
	}
	return 0;
}

