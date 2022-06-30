contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address wnativeAddress;
mapping of uint8 stor3;

function sub_26e61d77(?) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function wnative() {
    return wnativeAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setCallerOk(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0x73574e617469766552656c617965723a3a6f6e6c7957686974656c697374656443616c6c65723a3a20216f6b43616c6c65,
                    mem[213 len 15]
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(wnativeAddress)
    call wnativeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x72574e617469766552656c617965723a3a6f6e6c7957686974656c697374656443616c6c65723a3a2063616e27742077697468647261,
                        mem[218 len 10]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        54,
                        0x72574e617469766552656c617965723a3a6f6e6c7957686974656c697374656443616c6c65723a3a2063616e27742077697468647261,
                        mem[ceil32(return_data.size) + 219 len 10]
    ('bool', 'ext_call.success')
    stor1 = 1
}



}
