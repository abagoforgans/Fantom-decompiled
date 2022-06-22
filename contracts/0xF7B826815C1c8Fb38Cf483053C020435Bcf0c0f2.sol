contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
mapping of uint256 sub_03fac3c3;
mapping of uint256 sub_f0475a10;
mapping of uint256 sub_5e6739ac;
mapping of struct sub_59eb0d99;

function sub_03fac3c3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_03fac3c3[arg1][arg2]
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_59eb0d99(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint32(sub_59eb0d99[arg1].field_0), 
           uint32(sub_59eb0d99[arg1].field_0),
           uint32(sub_59eb0d99[arg1].field_0),
           uint32(sub_59eb0d99[arg1].field_0),
           uint32(sub_59eb0d99[arg1].field_128),
           uint32(sub_59eb0d99[arg1].field_0),
           bool(uint8(sub_59eb0d99[arg1].field_192))
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function sub_5e6739ac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5e6739ac[arg1]
}

function owner() payable {
    return owner
}

function sub_f0475a10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f0475a10[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function _pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function _unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function addMulti(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function removeMulti(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a2257f8e(?) payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require stor1[address(msg.sender)]
    if sub_f0475a10[address(msg.sender)] >= sub_5e6739ac[address(msg.sender)]:
        revert with 0, 'not equals'
    idx = sub_f0475a10[address(msg.sender)]
    while idx < sub_5e6739ac[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 6)
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = sub_03fac3c3[address(msg.sender)][idx]
        require ext_code.size(stor2)
        call stor2.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, sub_03fac3c3[address(msg.sender)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_f0475a10[address(msg.sender)] = sub_5e6739ac[address(msg.sender)]
}

function sub_464262ef(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require stor1[address(msg.sender)]
    if ('cd', 4).length >= ('cd', 36).length:
        revert with 0, 'not equals'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        call stor2.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + cd[36] + 36)]), cd[((32 * idx) + cd[4] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1677aa0a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[address(msg.sender)]
    if ('cd', 4).length > 100:
        revert with 0, 'not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor3)
        staticcall stor3.claimable(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14] == mem[_14]
        if mem[_14]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor3)
            call stor3.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f48250ec(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[address(msg.sender)]
    if ('cd', 4).length > 100:
        revert with 0, 'not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        staticcall stor2.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14] == mem[_14]
        if mem[_14] <= block.timestamp:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f3a165fe(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require stor1[address(msg.sender)]
    if arg2 > 100:
        revert with 0, 'not greater than 100'
    mem[0] = msg.sender
    mem[32] = 8
    if sub_f0475a10[address(msg.sender)] != sub_5e6739ac[address(msg.sender)]:
        revert with 0, 'receiving role'
    if sub_5e6739ac[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    idx = stor[sha3(mem[0 len 64])]
    while idx < sub_5e6739ac[address(msg.sender)] + arg2:
        require ext_code.size(stor2)
        staticcall stor2.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        require mem[_24] == mem[_24]
        mem[mem[64]] = 0x35d9f2a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        call stor2.summon(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 6)
        sub_03fac3c3[address(msg.sender)][idx] = _25
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_f0475a10[address(msg.sender)] = sub_5e6739ac[address(msg.sender)]
    sub_5e6739ac[address(msg.sender)] += arg2
}

function sub_30f6fe34(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[address(msg.sender)]
    if ('cd', 4).length > 200:
        revert with 0, 'not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        staticcall stor2.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_14] == mem[_14 + 12 len 20]
        if mem[_14 + 12 len 20] != this.address:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor2)
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_77ecbcd1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[address(msg.sender)]
    if ('cd', 4).length > 100:
        revert with 0, 'not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor4)
        staticcall stor4.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _20 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_20] == mem[_20]
        if mem[_20] <= block.timestamp:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor4)
            staticcall stor4.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_24] == mem[_24]
            if mem[_24] > 0:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor4)
                call stor4.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_28] == mem[_28]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6ccefc42(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require stor1[address(msg.sender)]
    if ('cd', 4).length > 100:
        revert with 0, 'not greater than 100'
    mem[0] = cd[36]
    mem[32] = 9
    mem[64] = 320
    mem[96] = uint32(sub_59eb0d99[cd[36]].field_0)
    mem[128] = uint32(sub_59eb0d99[cd[36]].field_32)
    mem[160] = uint32(sub_59eb0d99[cd[36]].field_64)
    mem[192] = uint32(sub_59eb0d99[cd[36]].field_96)
    mem[224] = uint32(sub_59eb0d99[cd[36]].field_128)
    mem[256] = uint32(sub_59eb0d99[cd[36]].field_160)
    mem[288] = bool(uint8(sub_59eb0d99[cd[36]].field_192))
    if not uint8(sub_59eb0d99[cd[36]].field_192):
        revert with 0, 'score fail'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor5)
        staticcall stor5.character_created(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        if not mem[_25]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            _27 = mem[96]
            _28 = mem[128]
            _29 = mem[160]
            _30 = mem[192]
            _31 = mem[224]
            _32 = mem[256]
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint32(_27)
            mem[mem[64] + 68] = uint32(_28)
            mem[mem[64] + 100] = uint32(_29)
            mem[mem[64] + 132] = uint32(_30)
            mem[mem[64] + 164] = uint32(_31)
            mem[mem[64] + 196] = uint32(_32)
            require ext_code.size(stor5)
            call stor5.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], _27 << 224, _28 << 224, _29 << 224, _30 << 224, _31 << 224, uint32(_32)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_823e36ed(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 1
    require stor1[address(msg.sender)]
    if ('cd', 4).length > 100:
        revert with 0, 'not greater than 100'
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        staticcall stor2.level(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        require mem[_22] == mem[_22]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor2)
        staticcall stor2.xp(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _27 = mem[_26]
        require mem[_26] == mem[_26]
        mem[mem[64] + 4] = _23
        require ext_code.size(stor2)
        staticcall stor2.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _23
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _30 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_30] == mem[_30]
        if _27 >= mem[_30]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor2)
            call stor2.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_d515278a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(sub_59eb0d99[cd[4]].field_192):
        revert with 0, 'repeat'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    require ext_code.size(stor5)
    staticcall stor5.0xfd5770a5 with:
            gas gas_remaining wei
           args 0, 0, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, uint32(('cd', 36)[3]), ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 32:
        revert with 0, 'calc fail'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    uint32(sub_59eb0d99[cd[4]].field_0) = uint32(('cd', 36)[0])
    uint32(sub_59eb0d99[cd[4]].field_32) = uint32(('cd', 36)[1])
    uint32(sub_59eb0d99[cd[4]].field_64) = uint32(('cd', 36)[2])
    uint32(sub_59eb0d99[cd[4]].field_96) = uint32(('cd', 36)[3])
    uint32(sub_59eb0d99[cd[4]].field_128) = uint32(('cd', 36)[4])
    uint32(sub_59eb0d99[cd[4]].field_160) = uint32(('cd', 36)[5])
    uint64(sub_59eb0d99[cd[4]].field_192) = 1
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    emit 0x39efe76f: cd[4], ('cd', 36)[0] << 224, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, ('cd', 36)[3] << 224, ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
}

function sub_843ce088(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(sub_59eb0d99[cd[4]].field_192):
        revert with 0, 'not exists'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    require ext_code.size(stor5)
    staticcall stor5.0xfd5770a5 with:
            gas gas_remaining wei
           args 0, 0, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, uint32(('cd', 36)[3]), ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 32:
        revert with 0, 'calc fail'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    uint32(sub_59eb0d99[cd[4]].field_0) = uint32(('cd', 36)[0])
    uint32(sub_59eb0d99[cd[4]].field_32) = uint32(('cd', 36)[1])
    uint32(sub_59eb0d99[cd[4]].field_64) = uint32(('cd', 36)[2])
    uint32(sub_59eb0d99[cd[4]].field_96) = uint32(('cd', 36)[3])
    uint32(sub_59eb0d99[cd[4]].field_128) = uint32(('cd', 36)[4])
    uint32(sub_59eb0d99[cd[4]].field_160) = uint32(('cd', 36)[5])
    uint64(sub_59eb0d99[cd[4]].field_192) = 1
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    emit 0x1cb6a938: cd[4], ('cd', 36)[0] << 224, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, ('cd', 36)[3] << 224, ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
}

function sub_c5279978(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _61 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor2)
            staticcall stor2.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args _61
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_70] == mem[_70 + 12 len 20]
            if mem[_70 + 12 len 20] != this.address:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + 129] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _66 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _66] = mem[floor32(('cd', 4).length) + 129 len 32 * _66]
        return 32, mem[mem[64] + 32 len (32 * _66) + 32]
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _64 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args _64
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71 + 12 len 20]
        if mem[_71 + 12 len 20] != this.address:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[floor32(('cd', 4).length) + 129] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _67 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _67] = mem[floor32(('cd', 4).length) + 129 len 32 * _67]
    return 32, mem[mem[64] + 32 len (32 * _67) + 32]
}

function sub_ab81bfbf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _79 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_79 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_79]:
                revert with 'NH{q', 50
            mem[_79 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _87 = mem[(32 * idx) + 128]
            mem[_79 + 100] = mem[(32 * idx) + 128]
            require ext_code.size(stor3)
            staticcall stor3.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _87
            mem[_79 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _79 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 1 >= mem[_79]:
                revert with 'NH{q', 50
            mem[_79 + 64] = ext_call.return_data[0]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _79
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _78 = mem[64]
        mem[mem[64]] = 32
        _81 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _81) + 64
        u = mem[64] + 64
        while idx < _81:
            mem[u] = t + -_78 - 64
            _114 = mem[s]
            _118 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = _114 + 32
            x = t + 32
            while ('cd', 4).length < _118:
                mem[x] = mem[w]
                v = ('cd', 4).length + 1
                w = w + 32
                x = x + 32
                continue 
            v = v + 1
            s = s + 32
            t = x
            u = u + 32
            continue 
    else:
        mem[floor32(('cd', 4).length) + 129] = 96
        s = floor32(('cd', 4).length) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            _116 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_116 + 32 len 64] = call.data[calldata.size len 64]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_116]:
                revert with 'NH{q', 50
            mem[_116 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _124 = mem[(32 * idx) + 128]
            mem[_116 + 100] = mem[(32 * idx) + 128]
            require ext_code.size(stor3)
            staticcall stor3.claimable(uint256 arg1) with:
                    gas gas_remaining wei
                   args _124
            mem[_116 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _116 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if 1 >= mem[_116]:
                revert with 'NH{q', 50
            mem[_116 + 64] = ext_call.return_data[0]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _116
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _115 = mem[64]
        mem[mem[64]] = 32
        _120 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _120) + 64
        u = mem[64] + 64
        while idx < _120:
            mem[u] = t + -_115 - 64
            _137 = mem[s]
            _139 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = _137 + 32
            x = t + 32
            while ('cd', 4).length < _139:
                mem[x] = mem[w]
                v = ('cd', 4).length + 1
                w = w + 32
                x = x + 32
                continue 
            v = v + 1
            s = s + 32
            t = x
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_d6a4249e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _171 = mem[64]
            mem[mem[64]] = 11
            mem[64] = mem[64] + 384
            mem[_171 + 32 len 352] = call.data[calldata.size len 352]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_171]:
                revert with 'NH{q', 50
            mem[_171 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor2)
            staticcall stor2.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_171 + 384 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _171 + ceil32(return_data.size) + 384
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            if 1 >= mem[_171]:
                revert with 'NH{q', 50
            if 2 >= mem[_171]:
                revert with 'NH{q', 50
            if 3 >= mem[_171]:
                revert with 'NH{q', 50
            if 4 >= mem[_171]:
                revert with 'NH{q', 50
            mem[_171 + 160] = ext_call.return_data[96]
            mem[_171 + 128] = ext_call.return_data[64]
            mem[_171 + 96] = ext_call.return_data[32]
            mem[_171 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor5)
            staticcall stor5.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_171 + ceil32(return_data.size) + 384 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _171 + (2 * ceil32(return_data.size)) + 384
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if 5 >= mem[_171]:
                revert with 'NH{q', 50
            if 6 >= mem[_171]:
                revert with 'NH{q', 50
            if 7 >= mem[_171]:
                revert with 'NH{q', 50
            if 8 >= mem[_171]:
                revert with 'NH{q', 50
            if 9 >= mem[_171]:
                revert with 'NH{q', 50
            if 10 >= mem[_171]:
                revert with 'NH{q', 50
            mem[_171 + 352] = ext_call.return_data[188 len 4]
            mem[_171 + 320] = ext_call.return_data[156 len 4]
            mem[_171 + 288] = ext_call.return_data[124 len 4]
            mem[_171 + 256] = ext_call.return_data[92 len 4]
            mem[_171 + 224] = ext_call.return_data[60 len 4]
            mem[_171 + 192] = ext_call.return_data[28 len 4]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _171
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _170 = mem[64]
        mem[mem[64]] = 32
        _173 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _173) + 64
        u = mem[64] + 64
        while idx < _173:
            mem[u] = t + -_170 - 64
            _252 = mem[s]
            _256 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = _252 + 32
            x = t + 32
            while v < _256:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _256) + 32
            u = u + 32
            continue 
    else:
        mem[floor32(('cd', 4).length) + 129] = 96
        s = floor32(('cd', 4).length) + 129
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            _254 = mem[64]
            mem[mem[64]] = 11
            mem[64] = mem[64] + 384
            mem[_254 + 32 len 352] = call.data[calldata.size len 352]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if 0 >= mem[_254]:
                revert with 'NH{q', 50
            mem[_254 + 32] = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor2)
            staticcall stor2.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_254 + 384 len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _254 + ceil32(return_data.size) + 384
            require return_data.size >= 128
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            if 1 >= mem[_254]:
                revert with 'NH{q', 50
            if 2 >= mem[_254]:
                revert with 'NH{q', 50
            if 3 >= mem[_254]:
                revert with 'NH{q', 50
            if 4 >= mem[_254]:
                revert with 'NH{q', 50
            mem[_254 + 160] = ext_call.return_data[96]
            mem[_254 + 128] = ext_call.return_data[64]
            mem[_254 + 96] = ext_call.return_data[32]
            mem[_254 + 64] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor5)
            staticcall stor5.ability_scores(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[_254 + ceil32(return_data.size) + 384 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _254 + (2 * ceil32(return_data.size)) + 384
            require return_data.size >= 192
            require ext_call.return_data[0] == ext_call.return_data[28 len 4]
            require ext_call.return_data[32] == ext_call.return_data[60 len 4]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_call.return_data[96] == ext_call.return_data[124 len 4]
            require ext_call.return_data[128] == ext_call.return_data[156 len 4]
            require ext_call.return_data[160] == ext_call.return_data[188 len 4]
            if 5 >= mem[_254]:
                revert with 'NH{q', 50
            if 6 >= mem[_254]:
                revert with 'NH{q', 50
            if 7 >= mem[_254]:
                revert with 'NH{q', 50
            if 8 >= mem[_254]:
                revert with 'NH{q', 50
            if 9 >= mem[_254]:
                revert with 'NH{q', 50
            if 10 >= mem[_254]:
                revert with 'NH{q', 50
            mem[_254 + 352] = ext_call.return_data[188 len 4]
            mem[_254 + 320] = ext_call.return_data[156 len 4]
            mem[_254 + 288] = ext_call.return_data[124 len 4]
            mem[_254 + 256] = ext_call.return_data[92 len 4]
            mem[_254 + 224] = ext_call.return_data[60 len 4]
            mem[_254 + 192] = ext_call.return_data[28 len 4]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _254
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _253 = mem[64]
        mem[mem[64]] = 32
        _258 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _258) + 64
        u = mem[64] + 64
        while idx < _258:
            mem[u] = t + -_253 - 64
            _298 = mem[s]
            _300 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            w = _298 + 32
            x = t + 32
            while v < _300:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _300) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
