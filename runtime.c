#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

#define num_shift 2
#define num_mask 0b11
#define num_tag 0b00

#define bool_shift 7
#define bool_mask  0b1111111
#define bool_tag   0b0011111

#define heap_mask 0b111
#define pair_tag 0b010
#define fn_tag 0b110

extern uint64_t entry(void *heap);

void error() {
  printf("ERROR");
  exit(1);
}

uint64_t read_num() {
  int r;
  scanf("%d", &r);
  return (uint64_t)(r) << num_shift;
}

void print_value(uint64_t value) {
  if ((value & num_mask) == num_tag) {
    int64_t ivalue = (int64_t)value;
    printf("%" PRIi64, ivalue >> num_shift);
  } else if ((value & bool_mask) == bool_tag) {
    if (value >> bool_shift) {
      printf("true");
    } else {
      printf("false");
    }
  } else if ((value & heap_mask) == pair_tag) {
    uint64_t v1 = *(uint64_t*)(value - pair_tag);
    uint64_t v2 = *(uint64_t*)(value - pair_tag + 8);
    printf("(pair ");
    print_value(v1);
    printf(" ");
    print_value(v2);
    printf(")");
  } else if ((value & heap_mask) == fn_tag) {
    printf("<function>");
  } else {
    printf("BAD VALUE %" PRIu64, value);
  }
}


int main(int argc, char **argv) {
  void *heap = (void *)malloc(4096);
  entry(heap);
  return 0;
}

void print_newline() {
  printf("\n");
}