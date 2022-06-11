contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
array of struct sub_3d287686;
address stor102;
uint32 stor3608;
address stor3608;
uint256 stor3608;
uint8 stor4910;

function sub_3d287686(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_3d287686[arg1].field_0
    return sub_3d287686[arg1][arg2].field_0
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function removeAllTokens() {
    sub_3d287686[address(msg.sender)].field_0 = 0
    idx = 0
    while sub_3d287686[address(msg.sender)].field_0 > idx:
        sub_3d287686[address(msg.sender)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_d449fda9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[32] = 101
        sub_3d287686[address(msg.sender)].field_0++
        mem[0] = sha3(address(msg.sender), 101)
        sub_3d287686[address(msg.sender)][sub_3d287686[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e23e2881(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = 0x9024944800000000000000000000000000000000000000000000000000000000
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor102)
        call stor102.level_up(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function batchTransfer(uint256[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    idx = 0
    while idx < arg1.length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stor102)
        call stor102.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(arg2), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_55dec455(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_3d287686[address(arg1)].field_0:
        mem[128] = sub_3d287686[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_3d287686[address(arg1)].field_0, data=mem[128 len 32 * sub_3d287686[address(arg1)].field_0])
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 160] = sub_3d287686[address(arg1)].field_0
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 192 len 32 * sub_3d287686[address(arg1)].field_0] = mem[128 len 32 * sub_3d287686[address(arg1)].field_0]
    return memory
      from (32 * sub_3d287686[address(arg1)].field_0) + 128
       len (96 * sub_3d287686[address(arg1)].field_0) + 64
}

function sub_4079d1f1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor102)
    staticcall stor102.next_summoner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor102)
    call stor102.summon(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3d287686[address(msg.sender)].field_0++
    sub_3d287686[address(msg.sender)][sub_3d287686[address(msg.sender)].field_0].field_0 = ext_call.return_data[0]
    require ext_code.size(stor102)
    call stor102.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_3d287686[address(msg.sender)].field_0:
        if idx >= sub_3d287686[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if sub_3d287686[address(msg.sender)][idx].field_0 == arg1:
            if sub_3d287686[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if sub_3d287686[address(msg.sender)].field_0 - 1 >= sub_3d287686[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            if idx >= sub_3d287686[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            sub_3d287686[address(msg.sender)][idx].field_0 = sub_3d287686[address(msg.sender)][sub_3d287686[address(msg.sender)].field_0].field_0
            if not sub_3d287686[address(msg.sender)].field_0:
                revert with 'NH{q', 49
            sub_3d287686[address(msg.sender)][sub_3d287686[address(msg.sender)].field_0].field_0 = 0
            sub_3d287686[address(msg.sender)].field_0--
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 101
        idx = idx + 1
        continue 
}

function sub_c657c0f7(?) {
    require ext_code.size(stor102)
    staticcall stor102.next_summoner() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 1
    s = mem[96]
    while idx <= 11:
        require ext_code.size(stor102)
        call stor102.summon(uint256 arg1) with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 101
        sub_3d287686[address(msg.sender)].field_0++
        mem[0] = sha3(address(msg.sender), 101)
        sub_3d287686[address(msg.sender)][sub_3d287686[address(msg.sender)].field_0].field_0 = s
        mem[ceil32(return_data.size) + 96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = s
        require ext_code.size(stor102)
        call stor102.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if not stor4910:
        stor4910 = 1
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: delegate call to non-contract'
        delegate arg1 with:
           funct (Mask(32, 224, unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), 0) >> 224)
             gas gas_remaining wei
            args (Mask(256, -32, unknown_0x3659cfe6(?????), Mask(224, 0, stor3608), uint32(stor3608), 0) << 32)
        if not return_data.size:
            if not delegate.return_code:
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        else:
            if not delegate.return_code:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 32, 39, 0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[267 len 25] >> 56, 0
        ('bool', 'delegate.return_code')
        stor4910 = 0
        if address(stor3608) != address(stor3608):
            revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'ERC1967: new implementation is not a contract'
        address(stor3608) = arg1
        emit Upgraded(arg1);
}

function sub_671b71a0(?) {
    if not sub_3d287686[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= sub_3d287686[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            _11 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 132] = _11
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _11
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_3d287686[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= sub_3d287686[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            _21 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 132] = _21
            require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
            call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                 gas gas_remaining wei
                args _21
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_9181a090(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require ext_code.size(stor102)
        call stor102.adventure(uint256 arg1) with:
             gas gas_remaining wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
        staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_21] == mem[_21]
            if mem[_21] > 0:
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            _22 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_22] == mem[_22]
            if mem[_22] > 0:
                mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
                require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[((32 * idx) + cd[4] + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor102 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor102 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor102 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor102 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        stor102 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        stor102 = 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb
                        Mask(248, 0, stor0.field_8) = 0
}

function sub_f0ee2af9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(stor102)
            staticcall stor102.adventurers_log(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_30] == mem[_30]
            if mem[_30] > -86401:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_30] + (24 * 3600) > block.timestamp:
                mem[(32 * idx) + 128] = 1
            else:
                mem[(32 * idx) + 128] = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _22 = mem[64]
        mem[mem[64]] = 32
        _26 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _26:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _22 + (32 * _26) + -mem[64] + 64
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(stor102)
        staticcall stor102.adventurers_log(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31]
        if mem[_31] > -86401:
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[_31] + (24 * 3600) > block.timestamp:
            mem[(32 * idx) + 128] = 1
        else:
            mem[(32 * idx) + 128] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _24 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _27:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _24 + (32 * _27) + -mem[64] + 64
}

function sub_988e2a03(?) {
    if not sub_3d287686[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= sub_3d287686[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            _15 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 132] = _15
            require ext_code.size(stor102)
            call stor102.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _15
            if ext_call.success:
                if idx >= sub_3d287686[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                _19 = mem[(32 * idx) + 128]
                mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 132] = _19
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args _19
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128] = sub_3d287686[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= sub_3d287686[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            _33 = mem[(32 * idx) + 128]
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 128] = 0x9024944800000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 132] = _33
            require ext_code.size(stor102)
            call stor102.level_up(uint256 arg1) with:
                 gas gas_remaining wei
                args _33
            if ext_call.success:
                if idx >= sub_3d287686[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                _37 = mem[(32 * idx) + 128]
                mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 128] = 0x379607f500000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_3d287686[address(msg.sender)].field_0) + 132] = _37
                require ext_code.size(0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2)
                call 0x2069b76afe6b734fb65d1d099e7ec64ee9cc76b2.claim(uint256 arg1) with:
                     gas gas_remaining wei
                    args _37
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function sub_ef4ea50e(?) {
    mem[0] = msg.sender
    mem[32] = 101
    mem[64] = (32 * sub_3d287686[address(msg.sender)].field_0) + 128
    mem[96] = sub_3d287686[address(msg.sender)].field_0
    if not sub_3d287686[address(msg.sender)].field_0:
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _23 = mem[(32 * idx) + 128]
            require ext_code.size(stor102)
            call stor102.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _23
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _30 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_30] == mem[_30]
                if mem[_30] > 0:
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _23
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                _31 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_31] == mem[_31]
                if mem[_31] > 0:
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _23
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _23
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sha3(address(msg.sender), 101)
        mem[128] = sub_3d287686[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_3d287686[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_3d287686[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < sub_3d287686[address(msg.sender)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _57 = mem[(32 * idx) + 128]
            require ext_code.size(stor102)
            call stor102.adventure(uint256 arg1) with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
            staticcall 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.scout(uint256 arg1) with:
                    gas gas_remaining wei
                   args _57
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_64] == mem[_64]
                if mem[_64] > 0:
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _57
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _57
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_65] == mem[_65]
                if mem[_65] > 0:
                    mem[mem[64]] = 0xb00b52f100000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _57
                    require ext_code.size(0x2a0f1cb17680161cf255348ddfdee94ea8ca196a)
                    call 0x2a0f1cb17680161cf255348ddfdee94ea8ca196a.adventure(uint256 arg1) with:
                         gas gas_remaining wei
                        args _57
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'ERC1967: new implementation is not a contract'
    address(stor3608) = arg1
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: delegate call to non-contract'
    mem[ceil32(ceil32(arg2.length)) + 193 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, 39) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 193] = 0
    delegate arg1.mem[ceil32(ceil32(arg2.length)) + 193 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 197 len arg2.length - 4]
    if not return_data.size:
        if not delegate.return_code:
            if arg2.length > 0:
                revert with arg2[all]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            delegate arg1 with:
               funct (Mask(32, 224, 0, address(stor3608), 0) >> 224)
                 gas gas_remaining wei
                args (Mask(256, -32, 0, address(stor3608), 0) << 32)
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length > 0:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            else:
                if not delegate.return_code:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 332 len 25] >> 56,
                                0
            ('bool', 'delegate.return_code')
            stor4910 = 0
            if address(stor3608) != address(stor3608):
                revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
            if ext_code.size(arg1) <= 0:
                revert with 0, 'ERC1967: new implementation is not a contract'
            address(stor3608) = arg1
            emit Upgraded(arg1);
    else:
        if not delegate.return_code:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        32,
                        39,
                        0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + 168 len 25] >> 56,
                        0
        if not stor4910:
            stor4910 = 1
            if ext_code.size(arg1) <= 0:
                revert with 0, 'Address: delegate call to non-contract'
            delegate arg1 with:
               funct (Mask(32, 224, 0, address(stor3608), 0) >> 224)
                 gas gas_remaining wei
                args (Mask(256, -32, 0, address(stor3608), 0) << 32)
            if not return_data.size:
                if not delegate.return_code:
                    if arg2.length > 0:
                        revert with arg2[all]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                0
                stor4910 = 0
                if address(stor3608) != address(stor3608):
                    revert with 0, 'ERC1967Upgrade: upgrade breaks further upgrades'
                if ext_code.size(arg1) <= 0:
                    revert with 0, 'ERC1967: new implementation is not a contract'
            else:
                if not delegate.return_code:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                32,
                                39,
                                0xfe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65, mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 333 len 25] >> 56,
                                Mask(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25, -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25) + 256, 0) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 25) + 256
                stor4910 = 0
                if address(stor3608) != address(stor3608):
                    revert with 0, 
                                'ERC1967Upgrade: upgrade breaks further upgrades',
                                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 491 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if ext_code.size(arg1) <= 0:
                    revert with 0, 
                                'ERC1967: new implementation is not a contract',
                                mem[ceil32(ceil32(arg2.length)) + (2 * ceil32(return_data.size)) + 491 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            ('gt', ('extcodesize', ('param', 'arg1')), 0)
            address(stor3608) = arg1
            emit Upgraded(arg1);
}

function sub_f90dafc9(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    mem[100] = address(arg1)
    require ext_code.size(stor102)
    staticcall stor102.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = arg2
        s = 0
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(stor102)
            staticcall stor102.0x6352211e with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_64] == mem[_64 + 12 len 20]
            if mem[_64 + 12 len 20] != address(arg1):
                require ext_code.size(stor102)
                staticcall stor102.next_summoner() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _78 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_78] == mem[_78]
                if idx != mem[_78]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                _90 = mem[64]
                mem[mem[64]] = 32
                _92 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 64
                while idx < _92:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _90 + (32 * _92) + -mem[64] + 64
            if s >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * s) + ceil32(return_data.size) + 128] = idx
            if s == -1:
                revert with 'NH{q', 17
            require ext_code.size(stor102)
            staticcall stor102.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _86 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_86] == mem[_86]
            if idx != mem[_86]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 1
                continue 
            _94 = mem[64]
            mem[mem[64]] = 32
            _97 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _97:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _94 + (32 * _97) + -mem[64] + 64
        mem[mem[64]] = 32
        _60 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _60] = mem[ceil32(return_data.size) + 128 len 32 * _60]
        return 32, mem[mem[64] + 32 len (32 * _60) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = arg2
    s = 0
    while idx <= arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(stor102)
        staticcall stor102.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_65] == mem[_65 + 12 len 20]
        if mem[_65 + 12 len 20] != address(arg1):
            require ext_code.size(stor102)
            staticcall stor102.next_summoner() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_79] == mem[_79]
            if idx != mem[_79]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            _91 = mem[64]
            mem[mem[64]] = 32
            _93 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _93:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _91 + (32 * _93) + -mem[64] + 64
        if s >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * s) + ceil32(return_data.size) + 128] = idx
        if s == -1:
            revert with 'NH{q', 17
        require ext_code.size(stor102)
        staticcall stor102.next_summoner() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_87] == mem[_87]
        if idx != mem[_87]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _95 = mem[64]
        mem[mem[64]] = 32
        _99 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _99:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _95 + (32 * _99) + -mem[64] + 64
    mem[mem[64]] = 32
    _61 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _61] = mem[ceil32(return_data.size) + 128 len 32 * _61]
    return 32, mem[mem[64] + 32 len (32 * _61) + 32]
}

function sub_5b1dc97f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 101
    mem[96] = sub_3d287686[address(arg1)].field_0
    if not sub_3d287686[address(arg1)].field_0:
        if sub_3d287686[address(arg1)].field_0 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * sub_3d287686[address(arg1)].field_0) + 128] = sub_3d287686[address(arg1)].field_0
        mem[64] = (64 * sub_3d287686[address(arg1)].field_0) + 160
        if not sub_3d287686[address(arg1)].field_0:
            idx = 0
            while idx < sub_3d287686[address(arg1)].field_0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _61 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor102)
                staticcall stor102.level(uint256 arg1) with:
                        gas gas_remaining wei
                       args _61
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _70 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _74 = mem[_70]
                require mem[_70] == mem[_70]
                mem[mem[64] + 4] = mem[_70]
                require ext_code.size(stor102)
                staticcall stor102.xp_required(uint256 arg1) with:
                        gas gas_remaining wei
                       args _74
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _84 = mem[_82]
                require mem[_82] == mem[_82]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _88 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                require ext_code.size(stor102)
                staticcall stor102.xp(uint256 arg1) with:
                        gas gas_remaining wei
                       args _88
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _94 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_94] == mem[_94]
                if mem[_94] < _84:
                    if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
                else:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _66 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
            mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
            mem[mem[64] + 64 len 32 * _66] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _66]
            return 32, mem[mem[64] + 32 len (32 * _66) + 32]
        mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * sub_3d287686[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_3d287686[address(arg1)].field_0]
        idx = 0
        while idx < sub_3d287686[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _64 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor102)
            staticcall stor102.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _64
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _75 = mem[_71]
            require mem[_71] == mem[_71]
            mem[mem[64] + 4] = mem[_71]
            require ext_code.size(stor102)
            staticcall stor102.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _75
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _85 = mem[_83]
            require mem[_83] == mem[_83]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _90 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor102)
            staticcall stor102.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _90
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_95] == mem[_95]
            if mem[_95] < _85:
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _67 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 64 len 32 * _67] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _67]
        return 32, mem[mem[64] + 32 len (32 * _67) + 32]
    mem[0] = sha3(address(arg1), 101)
    mem[128] = sub_3d287686[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_3d287686[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_3d287686[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_3d287686[address(arg1)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 128] = sub_3d287686[address(arg1)].field_0
    mem[64] = (64 * sub_3d287686[address(arg1)].field_0) + 160
    if not sub_3d287686[address(arg1)].field_0:
        idx = 0
        while idx < sub_3d287686[address(arg1)].field_0:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _167 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor102)
            staticcall stor102.level(uint256 arg1) with:
                    gas gas_remaining wei
                   args _167
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _180 = mem[_176]
            require mem[_176] == mem[_176]
            mem[mem[64] + 4] = mem[_176]
            require ext_code.size(stor102)
            staticcall stor102.xp_required(uint256 arg1) with:
                    gas gas_remaining wei
                   args _180
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _190 = mem[_188]
            require mem[_188] == mem[_188]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _194 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(stor102)
            staticcall stor102.xp(uint256 arg1) with:
                    gas gas_remaining wei
                   args _194
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_200] == mem[_200]
            if mem[_200] < _190:
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _172 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
        mem[mem[64] + 64 len 32 * _172] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _172]
        return 32, mem[mem[64] + 32 len (32 * _172) + 32]
    mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * sub_3d287686[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_3d287686[address(arg1)].field_0]
    idx = 0
    while idx < sub_3d287686[address(arg1)].field_0:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _170 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor102)
        staticcall stor102.level(uint256 arg1) with:
                gas gas_remaining wei
               args _170
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _181 = mem[_177]
        require mem[_177] == mem[_177]
        mem[mem[64] + 4] = mem[_177]
        require ext_code.size(stor102)
        staticcall stor102.xp_required(uint256 arg1) with:
                gas gas_remaining wei
               args _181
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _191 = mem[_189]
        require mem[_189] == mem[_189]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _196 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor102)
        staticcall stor102.xp(uint256 arg1) with:
                gas gas_remaining wei
               args _196
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_201] == mem[_201]
        if mem[_201] < _191:
            if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = 0
        else:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * sub_3d287686[address(arg1)].field_0) + 160] = mem[(32 * idx) + 128]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _173 = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
    mem[mem[64] + 32] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 128]
    mem[mem[64] + 64 len 32 * _173] = mem[(32 * sub_3d287686[address(arg1)].field_0) + 160 len 32 * _173]
    return 32, mem[mem[64] + 32 len (32 * _173) + 32]
}



}
