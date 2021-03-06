// RUN: %clang_cc1 %s -triple spir -cl-std=c++ -emit-llvm -O0 -o - | FileCheck %s

struct S {
  S() {}
};

S s;

//CHECK: define internal spir_kernel void @_GLOBAL__sub_I_{{.*}}!kernel_arg_addr_space [[ARGMD:![0-9]+]] !kernel_arg_access_qual [[ARGMD]] !kernel_arg_type [[ARGMD]] !kernel_arg_base_type [[ARGMD]] !kernel_arg_type_qual [[ARGMD]]
// Check that parameters are empty.
//CHECK: [[ARGMD]] = !{}
