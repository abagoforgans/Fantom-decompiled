contract main {




// =====================  Runtime code  =====================


const decimals = 18

const _decimals = 18


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
array of struct stor2;
array of struct stor3;
uint256 _totalSupply;
mapping of uint256 _balanceOf;
mapping of uint256 allowance;
mapping of uint256 burnAllowance;
mapping of uint8 stor8;
uint8 locked;
array of uint8 sub_c6725757;
array of uint8 sub_66720804;
array of uint8 sub_7c83abe0;
array of uint8 sub_7392e963;
uint8 weight;

function burnAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return burnAllowance[arg1][arg2]
}

function totalSupply() payable {
    return _totalSupply
}

function _totalSupply() payable {
    return _totalSupply
}

function paused() payable {
    return bool(paused)
}

function sub_66720804(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6
    return sub_66720804[uint8(arg1)]
}

function sub_6a0d343a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function sub_7392e963(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return sub_7392e963[uint8(arg1)]
}

function sub_7c83abe0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return sub_7c83abe0[uint8(arg1)]
}

function pausers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balanceOf[arg1]
}

function weight() payable {
    return weight
}

function sub_c6725757(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6
    return sub_c6725757[uint8(arg1)]
}

function allowance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function locked() payable {
    return bool(locked)
}

function _balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balanceOf[arg1]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function lock() payable {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    locked = 1
}

function pause() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Pause denied'
    stor0 = 1
    return 1
}

function unpause() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'Unpause denied'
    stor0 = 0
    return 1
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    owner = arg1
    return 1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor8[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor8[address(arg1)] = 0
}

function sub_2c983a29(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if bool(locked) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    weight = uint8(arg1)
}

function mint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(paused) == 1:
        revert with 0, 'Contract is paused'
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 'Mint Access Denied'
    if _totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    _totalSupply += arg2
    if _balanceOf[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    _balanceOf[arg1] += arg2
    emit Mint(arg2, arg1, arg1);
}

function sub_7ae4841f(?) payable {
    mem[288] = sub_c6725757.length
    idx = 288
    s = 0
    while 480 > idx + 32:
        mem[idx + 32] = sub_c6725757[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 288
    t = 480
    while idx < 6:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 480
       len 192
}

function sub_e8a2e827(?) payable {
    mem[288] = sub_66720804.length
    idx = 288
    s = 0
    while 480 > idx + 32:
        mem[idx + 32] = sub_66720804[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 288
    t = 480
    while idx < 6:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 480
       len 192
}

function sub_4a2edb08(?) payable {
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[64] = 288
    mem[192] = sub_7392e963.length
    idx = 192
    s = 0
    while 288 > idx + 32:
        mem[idx + 32] = sub_7392e963[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 192
    t = mem[64]
    while idx < 3:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len -mem[64] + 384
}

function sub_93fd5678(?) payable {
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[64] = 288
    mem[192] = sub_7c83abe0.length
    idx = 192
    s = 0
    while 288 > idx + 32:
        mem[idx + 32] = sub_7c83abe0[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 192
    t = mem[64]
    while idx < 3:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len -mem[64] + 384
}

function sub_8769fd41(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(paused) == 1:
        revert with 0, 'Contract is paused'
    if arg2 > burnAllowance[address(msg.sender)][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Requested Burn greater than approval'
    if _balanceOf[arg1] < arg2:
        revert with 0, 'Balance too low'
    if _totalSupply < arg2:
        revert with 'NH{q', 17
    _totalSupply -= arg2
    if _balanceOf[arg1] < arg2:
        revert with 'NH{q', 17
    _balanceOf[arg1] -= arg2
    emit Burn(arg2, arg1, arg1);
    if burnAllowance[address(msg.sender)][arg1] < arg2:
        revert with 'NH{q', 17
    burnAllowance[address(msg.sender)][arg1] -= arg2
}

function sub_0c68efe3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if bool(paused) == 1:
        revert with 0, 'Contract is paused'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be owner'
    burnAllowance[address(arg2)][arg1] = arg3
    emit 0x25513def: arg3, arg1, address(arg2)
}

function sub_af946adc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if bool(locked) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    mem[96] = uint8(arg1)
    mem[128] = uint8(arg2)
    mem[160] = uint8(arg3)
    s = 0
    idx = 96
    while 192 > idx:
        sub_7392e963.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_7392e963.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 13
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 13
    while 14 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_c0d655bf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if bool(locked) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    mem[96] = uint8(arg1)
    mem[128] = uint8(arg2)
    mem[160] = uint8(arg3)
    s = 0
    idx = 96
    while 192 > idx:
        sub_7c83abe0.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_7c83abe0.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 12
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 12
    while 13 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function burn(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(paused) == 1:
        revert with 0, 'Contract is paused'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be owner'
    if _balanceOf[arg1] < arg2:
        revert with 0, 'Balance too low'
    if _totalSupply < arg2:
        revert with 'NH{q', 17
    _totalSupply -= arg2
    if _balanceOf[arg1] < arg2:
        revert with 'NH{q', 17
    _balanceOf[arg1] -= arg2
    emit Burn(arg2, arg1, arg1);
}

function sub_45ba83e3(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    if bool(locked) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    mem[96] = uint8(arg1)
    mem[128] = uint8(arg2)
    mem[160] = uint8(arg3)
    mem[192] = uint8(arg4)
    mem[224] = uint8(arg5)
    mem[256] = uint8(arg6)
    s = 0
    idx = 96
    while 288 > idx:
        sub_c6725757.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_c6725757.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = 10
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 10
    while 11 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_e0c331e1(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    if bool(locked) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    mem[96] = uint8(arg1)
    mem[128] = uint8(arg2)
    mem[160] = uint8(arg3)
    mem[192] = uint8(arg4)
    mem[224] = uint8(arg5)
    mem[256] = uint8(arg6)
    s = 0
    idx = 96
    while 288 > idx:
        sub_66720804.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_66720804.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = 11
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 11
    while 12 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Must be owner'
    allowance[arg1][arg2] = arg3
    emit Approval(arg3, arg1, arg2);
    return 1
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if bool(paused) == 1:
        revert with 0, 'Contract is paused'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Must be owner'
    if _balanceOf[arg1] < arg3:
        revert with 'NH{q', 17
    _balanceOf[arg1] -= arg3
    if _balanceOf[arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    _balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if bool(paused) == 1:
        revert with 0, 'Contract is paused'
    require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
    staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
        staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0xe985e9c5 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(0xce761d788df608bd21bdd59d6f4b54b2e27f25bb)
            staticcall 0xce761d788df608bd21bdd59d6f4b54b2e27f25bb.0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Must be owner'
    if arg4 > allowance[arg2][arg1]:
        revert with 0, 'Transfer amount greater than approval'
    if _balanceOf[arg2] < arg4:
        revert with 'NH{q', 17
    _balanceOf[arg2] -= arg4
    if _balanceOf[arg3] > -arg4 - 1:
        revert with 'NH{q', 17
    _balanceOf[arg3] += arg4
    emit Transfer(arg4, arg2, arg3);
    if allowance[arg2][arg1] < arg4:
        revert with 'NH{q', 17
    allowance[arg2][arg1] -= arg4
    return 1
}

function name() payable {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[ceil32(uint255(stor2.length.field_1)) + uint255(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor3.length.field_1):
                if 31 < uint255(stor3.length.field_1):
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor3.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length.field_1)) + 192 len ceil32(uint255(stor3.length.field_1))] = mem[128 len ceil32(uint255(stor3.length.field_1))]
        if ceil32(uint255(stor3.length.field_1)) > uint255(stor3.length.field_1):
            mem[ceil32(uint255(stor3.length.field_1)) + uint255(stor3.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor3.length.field_1)), data=mem[128 len ceil32(uint255(stor3.length.field_1))], mem[(2 * ceil32(uint255(stor3.length.field_1))) + 192 len 2 * ceil32(uint255(stor3.length.field_1))]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor3.length.field_1):
            if 31 < uint255(stor3.length.field_1):
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while uint255(stor3.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[ceil32(stor3.length.field_1 % 128) + stor3.length.field_1 % 128 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}



}
