contract main {




// =====================  Runtime code  =====================


address owner;
uint128 stor3608; offset 160
address stor3608;
uint256 stor3608;
uint128 storB531; offset 160
address storB531;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function upgrade(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0x3659cfe6 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeProxyAdmin(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0x8f283970 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function admin() {
    if msg.sender == address(storB531.field_0):
        return address(storB531.field_0)
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(storB531.field_0):
        return address(stor3608.field_0)
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getProxyAdmin(address arg1) {
    require calldata.size - 4 >= 32
    staticcall arg1.0xf851a440 with:
            gas gas_remaining wei
    if not return_data.size:
        require ext_call.success
        return memory
          from 140
           len 20
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 97] = mem[140 len 20]
    return memory
      from ceil32(return_data.size) + 97
       len 32
}

function getProxyImplementation(address arg1) {
    require calldata.size - 4 >= 32
    staticcall arg1.0x5c60da1b with:
            gas gas_remaining wei
    if not return_data.size:
        require ext_call.success
        return memory
          from 140
           len 20
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 97] = mem[140 len 20]
    return memory
      from ceil32(return_data.size) + 97
       len 32
}

function upgradeAndCall(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.sender == address(storB531.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x745472616e73706172656e745570677261646561626c6550726f78793a2061646d696e2063616e6e6f742066616c6c6261636b20746f2070726f7879207461726765,
                    mem[230 len 30]
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645570677261646561626c6550726f78793a206e657720696d706c656d656e746174696f6e206973206e6f74206120636f6e74726163,
                    mem[218 len 10]
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit Upgraded(arg1);
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x735472616e73706172656e745570677261646561626c6550726f78793a206e65772061646d696e20697320746865207a65726f20616464726573,
                    mem[222 len 6]
    emit AdminChanged(address(storB531.field_0), arg1);
    address(storB531.field_0) = arg1
    Mask(96, 0, storB531.field_160) = 0
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645570677261646561626c6550726f78793a206e657720696d706c656d656e746174696f6e206973206e6f74206120636f6e74726163,
                    mem[218 len 10]
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit Upgraded(arg1);
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[64] = ceil32(arg2.length) + 224
    mem[ceil32(arg2.length) + 128] = 39
    mem[ceil32(arg2.length) + 160 len 39] = 0x72416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
    mem[ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    delegate arg1.mem[ceil32(arg2.length) + 224 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 228 len arg2.length - 4]
    if not return_data.size:
        if delegate.return_code:
        if arg2.length:
            revert with arg2[all]
        mem[ceil32(arg2.length) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + 228] = 32
        mem[ceil32(arg2.length) + 260] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + 292 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            revert with memory
              from ceil32(arg2.length) + 224
               len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 68
        mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + 292] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 324 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
        revert with memory
          from ceil32(arg2.length) + 224
           len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 100
    mem[64] = ceil32(arg2.length) + ceil32(return_data.size) + 225
    mem[ceil32(arg2.length) + 224] = return_data.size
    mem[ceil32(arg2.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 225] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 229] = 32
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 261] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 293 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
        revert with memory
          from ceil32(arg2.length) + ceil32(return_data.size) + 225
           len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 68
    mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(return_data.size) + 293] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + ceil32(arg2.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 325 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
    revert with memory
      from ceil32(arg2.length) + ceil32(return_data.size) + 225
       len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 100
}



}
