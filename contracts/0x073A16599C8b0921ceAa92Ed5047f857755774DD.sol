contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address farmAddress;

function getFarm() payable {
    return farmAddress
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[msg.sender] = 0
}

function setFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    farmAddress = arg1
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: caller is not a controller'
    stor0[address(arg1)] = 1
}

function getRandomNumber(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(farmAddress)
    call farmAddress.0x6e68fc0a with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_59792406(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    mem[96] = 0x5979240600000000000000000000000000000000000000000000000000000000
    mem[100] = uint8(arg1)
    require ext_code.size(farmAddress)
    call farmAddress.0x59792406 with:
         gas gas_remaining wei
        args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], uint8(arg1) << 216
    require mem[96 len 4], uint8(arg1) << 216 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], uint8(arg1) << 216 + 127
    _5 = mem[mem[96 len 4], uint8(arg1) << 216 + 96]
    if mem[mem[96 len 4], uint8(arg1) << 216 + 96] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[96 len 4], uint8(arg1) << 216 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], uint8(arg1) << 216 + 96]) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], uint8(arg1) << 216 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}

function sub_82da649a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    mem[96] = 0x82da649a00000000000000000000000000000000000000000000000000000000
    mem[100] = uint8(arg1)
    require ext_code.size(farmAddress)
    call farmAddress.0x82da649a with:
         gas gas_remaining wei
        args uint8(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], uint8(arg1) << 216
    require mem[96 len 4], uint8(arg1) << 216 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], uint8(arg1) << 216 + 127
    _5 = mem[mem[96 len 4], uint8(arg1) << 216 + 96]
    if mem[mem[96 len 4], uint8(arg1) << 216 + 96] > test266151307():
        revert with 'NH{q', 65
    if (32 * mem[mem[96 len 4], uint8(arg1) << 216 + 96]) + 32 < 0 or ceil32(return_data.size) + (32 * mem[mem[96 len 4], uint8(arg1) << 216 + 96]) + 128 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], uint8(arg1) << 216 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    return Array(len=_5, data=mem[mem[64] + 64 len 32 * _5])
}



}
