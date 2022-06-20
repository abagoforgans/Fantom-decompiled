contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
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

function sub_0a5b494b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require 2 * ('cd', 4).length <= test266151307()
    if uint255(('cd', 4).length):
        mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * ('cd', 4).length) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < 2 * ('cd', 4).length
        mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        require (2 * idx) + 1 < 2 * ('cd', 4).length
        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 192 len 2 * Mask(251, 4, ('cd', 4).length)] = mem[128 len 2 * Mask(251, 4, ('cd', 4).length)]
    return Array(len=2 * ('cd', 4).length, data=mem[128 len 2 * Mask(251, 4, ('cd', 4).length)], mem[(64 * ('cd', 4).length) + (2 * Mask(251, 4, ('cd', 4).length)) + 192 len (64 * ('cd', 4).length) - (2 * Mask(251, 4, ('cd', 4).length))]), 
}



}
