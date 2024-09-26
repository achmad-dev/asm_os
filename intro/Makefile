ASM=nasm

SRC_DIR=src
BUILD_DIR=build

.PHONY: all clean

all: $(BUILD_DIR)/main_floppy.img
$(BUILD_DIR)/main_floppy.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main_floppy.img
	truncate -s 1440k $(BUILD_DIR)/main_floppy.img

$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm | $(BUILD_DIR)
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin


$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run:
	qemu-system-x86_64 -fda $(BUILD_DIR)/main_floppy.img

clean:
	rm -rf $(BUILD_DIR)/*
