contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
address stor2;
address stor4;
address stor5;
mapping of uint256 sub_03fac3c3;
mapping of uint256 sub_f0475a10;
mapping of uint256 sub_5e6739ac;
mapping of struct sub_59eb0d99;

function sub_03fac3c3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_03fac3c3[arg1][arg2]
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function sub_59eb0d99(?) payable {
    require calldata.size - 4 >= 32
    return uint32(sub_59eb0d99[arg1].field_0), 
           uint32(sub_59eb0d99[arg1].field_0),
           uint32(sub_59eb0d99[arg1].field_0),
           uint32(sub_59eb0d99[arg1].field_0),
           uint32(sub_59eb0d99[arg1].field_128),
           uint32(sub_59eb0d99[arg1].field_0),
           bool(uint8(sub_59eb0d99[arg1].field_192))
}

function paused() payable {
    return bool(stor0)
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

function _pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function _unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
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
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
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
            revert with 0, 17
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
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a2257f8e(?) payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require stor1[address(msg.sender)]
    if sub_f0475a10[msg.sender] >= sub_5e6739ac[msg.sender]:
        revert with 0, 'not equals'
    idx = sub_f0475a10[msg.sender]
    while idx < sub_5e6739ac[msg.sender]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 6)
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = sub_03fac3c3[address(msg.sender)][idx]
        require ext_code.size(stor2)
        call stor2.0x42842e0e with:
             gas gas_remaining wei
            args this.address, msg.sender, sub_03fac3c3[address(msg.sender)][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_f0475a10[address(msg.sender)] = sub_5e6739ac[msg.sender]
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
    if stor0:
        revert with 0, 'Pausable: paused'
    require stor1[address(msg.sender)]
    if ('cd', 4).length >= ('cd', 36).length:
        revert with 0, 'not equals'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
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
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f3a165fe(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'Pausable: paused'
    require stor1[address(msg.sender)]
    if arg2 > 100:
        revert with 0, 'not greater than 100'
    mem[0] = msg.sender
    mem[32] = 8
    if sub_f0475a10[msg.sender] != sub_5e6739ac[msg.sender]:
        revert with 0, 'receiving role'
    if sub_5e6739ac[msg.sender] > !arg2:
        revert with 0, 17
    idx = stor[sha3(mem[0 len 64])]
    while idx < sub_5e6739ac[msg.sender] + arg2:
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
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_f0475a10[address(msg.sender)] = sub_5e6739ac[msg.sender]
    sub_5e6739ac[address(msg.sender)] = sub_5e6739ac[msg.sender] + arg2
}

function sub_f48250ec(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0:
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
        if mem[_14] <= block.timestamp:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor2)
            call stor2.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
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
    if stor0:
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
        if mem[_20] <= block.timestamp:
            if idx >= ('cd', 4).length:
                revert with 0, 50
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
            if mem[_24]:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(stor4)
                call stor4.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
        if idx == -1:
            revert with 0, 17
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
    if stor0:
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
        if idx >= ('cd', 4).length:
            revert with 0, 50
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
        if _27 >= mem[_30]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[mem[64]] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor2)
            call stor2.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6ccefc42(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0:
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
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_24] == bool(mem[_24])
        if not mem[_24]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            _26 = mem[96]
            _27 = mem[128]
            _28 = mem[160]
            _29 = mem[192]
            _30 = mem[224]
            _31 = mem[256]
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] + 36] = uint32(_26)
            mem[mem[64] + 68] = uint32(_27)
            mem[mem[64] + 100] = uint32(_28)
            mem[mem[64] + 132] = uint32(_29)
            mem[mem[64] + 164] = uint32(_30)
            mem[mem[64] + 196] = uint32(_31)
            require ext_code.size(stor5)
            call stor5.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args cd[((32 * idx) + cd[4] + 36)], _26 << 224, _27 << 224, _28 << 224, _29 << 224, _30 << 224, uint32(_31)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d515278a(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(sub_59eb0d99[cd[4]].field_192):
        revert with 0, 'repeat'
    if not ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    require ext_code.size(stor5)
    staticcall stor5.0xfd5770a5 with:
            gas gas_remaining wei
           args 0, 0, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, uint32(('cd', 36)[3]), ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 32
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    uint32(sub_59eb0d99[cd[4]].field_0) = uint32(('cd', 36)[0])
    uint32(sub_59eb0d99[cd[4]].field_32) = uint32(('cd', 36)[1])
    uint32(sub_59eb0d99[cd[4]].field_64) = uint32(('cd', 36)[2])
    uint32(sub_59eb0d99[cd[4]].field_96) = uint32(('cd', 36)[3])
    uint32(sub_59eb0d99[cd[4]].field_128) = uint32(('cd', 36)[4])
    uint32(sub_59eb0d99[cd[4]].field_160) = uint32(('cd', 36)[5])
    uint64(sub_59eb0d99[cd[4]].field_192) = 1
    if not ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    emit 0x39efe76f: cd[4], ('cd', 36)[0] << 224, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, ('cd', 36)[3] << 224, ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
}

function sub_843ce088(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(sub_59eb0d99[cd[4]].field_192):
        revert with 0, 'not exists'
    if not ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    require ext_code.size(stor5)
    staticcall stor5.0xfd5770a5 with:
            gas gas_remaining wei
           args 0, 0, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, uint32(('cd', 36)[3]), ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 32
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    uint32(sub_59eb0d99[cd[4]].field_0) = uint32(('cd', 36)[0])
    uint32(sub_59eb0d99[cd[4]].field_32) = uint32(('cd', 36)[1])
    uint32(sub_59eb0d99[cd[4]].field_64) = uint32(('cd', 36)[2])
    uint32(sub_59eb0d99[cd[4]].field_96) = uint32(('cd', 36)[3])
    uint32(sub_59eb0d99[cd[4]].field_128) = uint32(('cd', 36)[4])
    uint32(sub_59eb0d99[cd[4]].field_160) = uint32(('cd', 36)[5])
    uint64(sub_59eb0d99[cd[4]].field_192) = 1
    if not ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[0] == uint32(('cd', 36)[0])
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[1] == uint32(('cd', 36)[1])
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[2] == uint32(('cd', 36)[2])
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[3] == uint32(('cd', 36)[3])
    if 4 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[4] == uint32(('cd', 36)[4])
    if 5 >= ('cd', 36).length:
        revert with 0, 50
    require ('cd', 36)[5] == uint32(('cd', 36)[5])
    emit 0x1cb6a938: cd[4], ('cd', 36)[0] << 224, ('cd', 36)[1] << 224, ('cd', 36)[2] << 224, ('cd', 36)[3] << 224, ('cd', 36)[4] << 224, uint32(('cd', 36)[5])
}



}
