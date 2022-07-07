contract main {




// =====================  Runtime code  =====================


const decimals = 18

const DECIMALS = 18


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 8
uint8 weight;
array of uint8 stor2;
array of uint8 stor3;
array of uint8 stor4;
array of uint8 stor5;
address stor6;
array of struct stor7;
array of struct stor8;
uint256 _totalSupply;
mapping of uint256 _balanceOf;
mapping of uint8 stor11;
mapping of uint256 allowance;
mapping of uint256 burnAllowance;

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
    return bool(uint8(stor0.field_8))
}

function sub_6a0d343a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function owner() payable {
    return owner
}

function attributes() payable {
    return weight
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balanceOf[arg1]
}

function getWeight() payable {
    return weight
}

function allowance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function locked() payable {
    return bool(uint8(stor0.field_0))
}

function _balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _balanceOf[arg1]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function _fallback() payable {
    revert
}

function lock() payable {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    uint8(stor0.field_0) = 1
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    Mask(248, 0, stor0.field_8) = 1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    Mask(248, 0, stor0.field_8) = 0
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    owner = arg1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor11[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    stor11[address(arg1)] = 0
}

function sub_2c983a29(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if bool(uint8(stor0.field_0)) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    weight = uint8(arg1)
}

function sub_7ae4841f(?) payable {
    mem[288] = stor4.length
    idx = 288
    s = 0
    while 480 > idx + 32:
        mem[idx + 32] = stor4[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
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
    mem[288] = stor5.length
    idx = 288
    s = 0
    while 480 > idx + 32:
        mem[idx + 32] = stor5[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
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

function mint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        revert with 0, 'Contract is paused'
    if bool(stor11[address(msg.sender)]) != 1:
        revert with 0, 'Mint Access Denied'
    if _totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    _totalSupply += arg2
    if _balanceOf[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    _balanceOf[arg1] += arg2
    emit Mint(arg2, msg.sender, arg1);
}

function sub_4a2edb08(?) payable {
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[64] = 288
    mem[192] = stor3.length
    idx = 192
    s = 0
    while 288 > idx + 32:
        mem[idx + 32] = stor3[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
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
    mem[192] = stor2.length
    idx = 192
    s = 0
    while 288 > idx + 32:
        mem[idx + 32] = stor2[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
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
    if uint8(stor0.field_8):
        revert with 0, 'Contract is paused'
    if arg2 > burnAllowance[address(msg.sender)][arg1]:
        revert with 0, 'Burn > Approve'
    if _totalSupply < arg2:
        revert with 'NH{q', 17
    _totalSupply -= arg2
    if _balanceOf[arg1] < arg2:
        revert with 'NH{q', 17
    _balanceOf[arg1] -= arg2
    if burnAllowance[address(msg.sender)][arg1] < arg2:
        revert with 'NH{q', 17
    burnAllowance[address(msg.sender)][arg1] -= arg2
    emit Burn(arg2, arg1, arg1);
}

function sub_0c68efe3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if uint8(stor0.field_8):
        revert with 0, 'Contract is paused'
    require ext_code.size(stor6)
    staticcall stor6.0x6352211e with:
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

function burn(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        revert with 0, 'Contract is paused'
    require ext_code.size(stor6)
    staticcall stor6.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be owner'
    if _totalSupply < arg2:
        revert with 'NH{q', 17
    _totalSupply -= arg2
    if _balanceOf[arg1] < arg2:
        revert with 'NH{q', 17
    _balanceOf[arg1] -= arg2
    emit Burn(arg2, arg1, arg1);
}

function sub_af946adc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if bool(uint8(stor0.field_0)) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    mem[96] = uint8(arg1)
    mem[128] = uint8(arg2)
    mem[160] = uint8(arg3)
    s = 0
    idx = 96
    while 192 > idx:
        stor3.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor3.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 3
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 3
    while 4 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_c0d655bf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if bool(uint8(stor0.field_0)) == 1:
        revert with 0, 'Resource Locked'
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    mem[96] = uint8(arg1)
    mem[128] = uint8(arg2)
    mem[160] = uint8(arg3)
    s = 0
    idx = 96
    while 192 > idx:
        stor2.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor2.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 3
    s = 2
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = -(None + 3 / 32) + (None * None + 3 / 32) + 2
    while 3 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_45ba83e3(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require arg6 == uint8(arg6)
    if bool(uint8(stor0.field_0)) == 1:
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
        stor4.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor4.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = 4
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 4
    while 5 > idx:
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
    if bool(uint8(stor0.field_0)) == 1:
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
        stor5.length = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor5.length
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = 5
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 5
    while 6 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function approve(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(stor6)
    staticcall stor6.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor6)
        staticcall stor6.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor6)
        staticcall stor6.0xe985e9c5 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(stor6)
            staticcall stor6.0x6352211e with:
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

function getAttributes() payable {
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[192 len 96] = call.data[calldata.size len 96]
    mem[288 len 192] = call.data[calldata.size len 192]
    mem[480 len 192] = call.data[calldata.size len 192]
    mem[672] = stor2.length
    idx = 672
    s = 0
    while 768 > idx + 32:
        mem[idx + 32] = stor2[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[768] = stor3.length
    idx = 768
    s = 0
    while 864 > idx + 32:
        mem[idx + 32] = stor3[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[864] = stor4.length
    idx = 864
    s = 0
    while 1056 > idx + 32:
        mem[idx + 32] = stor4[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[64] = 1248
    mem[1056] = stor5.length
    idx = 1056
    s = 0
    while 1248 > idx + 32:
        mem[idx + 32] = stor5[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    idx = 0
    s = 672
    t = mem[64]
    while idx < 3:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 768
    t = 1344
    while idx < 3:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 864
    t = 1440
    while idx < 6:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 1056
    t = 1632
    while idx < 6:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[1824] = weight
    return memory
      from mem[64]
       len -mem[64] + 1856
}

function transfer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        revert with 0, 'Contract is paused'
    require ext_code.size(stor6)
    staticcall stor6.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor6)
        staticcall stor6.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor6)
        staticcall stor6.0xe985e9c5 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(stor6)
            staticcall stor6.0x6352211e with:
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
    if uint8(stor0.field_8):
        revert with 0, 'Contract is paused'
    require ext_code.size(stor6)
    staticcall stor6.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor6)
        staticcall stor6.0x6352211e with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(stor6)
        staticcall stor6.0xe985e9c5 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(stor6)
            staticcall stor6.0x6352211e with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Must be owner'
    if arg4 > allowance[arg2][arg1]:
        revert with 0, 'Transfer > Approve'
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
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor7.length.field_1):
                if 31 < uint255(stor7.length.field_1):
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor7.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        else:
            if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1 % 128:
                if 31 < stor7.length.field_1 % 128:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        mem[ceil32(uint255(stor7.length.field_1)) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
        if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
            mem[ceil32(uint255(stor7.length.field_1)) + uint255(stor7.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + 192 len 2 * ceil32(uint255(stor7.length.field_1))]), 
    if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor7.length.field_1):
            if 31 < uint255(stor7.length.field_1):
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while uint255(stor7.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    else:
        if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1 % 128:
            if 31 < stor7.length.field_1 % 128:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    mem[ceil32(stor7.length.field_1 % 128) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
    if ceil32(stor7.length.field_1 % 128) > stor7.length.field_1 % 128:
        mem[ceil32(stor7.length.field_1 % 128) + stor7.length.field_1 % 128 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + 192 len 2 * ceil32(stor7.length.field_1 % 128)]), 
}

function _name() payable {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor7.length.field_1):
                if 31 < uint255(stor7.length.field_1):
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor7.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        else:
            if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1 % 128:
                if 31 < stor7.length.field_1 % 128:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
        mem[ceil32(uint255(stor7.length.field_1)) + 192 len ceil32(uint255(stor7.length.field_1))] = mem[128 len ceil32(uint255(stor7.length.field_1))]
        if ceil32(uint255(stor7.length.field_1)) > uint255(stor7.length.field_1):
            mem[ceil32(uint255(stor7.length.field_1)) + uint255(stor7.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor7.length.field_1)), data=mem[128 len ceil32(uint255(stor7.length.field_1))], mem[(2 * ceil32(uint255(stor7.length.field_1))) + 192 len 2 * ceil32(uint255(stor7.length.field_1))]), 
    if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor7.length.field_1):
            if 31 < uint255(stor7.length.field_1):
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while uint255(stor7.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    else:
        if bool(stor7.length) == stor7.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1 % 128:
            if 31 < stor7.length.field_1 % 128:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor7.length.field_8)
    mem[ceil32(stor7.length.field_1 % 128) + 192 len ceil32(stor7.length.field_1 % 128)] = mem[128 len ceil32(stor7.length.field_1 % 128)]
    if ceil32(stor7.length.field_1 % 128) > stor7.length.field_1 % 128:
        mem[ceil32(stor7.length.field_1 % 128) + stor7.length.field_1 % 128 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1 % 128)], mem[(2 * ceil32(stor7.length.field_1 % 128)) + 192 len 2 * ceil32(stor7.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor8.length.field_1):
                if 31 < uint255(stor8.length.field_1):
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor8.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        else:
            if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1 % 128:
                if 31 < stor8.length.field_1 % 128:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        mem[ceil32(uint255(stor8.length.field_1)) + 192 len ceil32(uint255(stor8.length.field_1))] = mem[128 len ceil32(uint255(stor8.length.field_1))]
        if ceil32(uint255(stor8.length.field_1)) > uint255(stor8.length.field_1):
            mem[ceil32(uint255(stor8.length.field_1)) + uint255(stor8.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))], mem[(2 * ceil32(uint255(stor8.length.field_1))) + 192 len 2 * ceil32(uint255(stor8.length.field_1))]), 
    if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor8.length.field_1):
            if 31 < uint255(stor8.length.field_1):
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while uint255(stor8.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    else:
        if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1 % 128:
            if 31 < stor8.length.field_1 % 128:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    mem[ceil32(stor8.length.field_1 % 128) + 192 len ceil32(stor8.length.field_1 % 128)] = mem[128 len ceil32(stor8.length.field_1 % 128)]
    if ceil32(stor8.length.field_1 % 128) > stor8.length.field_1 % 128:
        mem[ceil32(stor8.length.field_1 % 128) + stor8.length.field_1 % 128 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)], mem[(2 * ceil32(stor8.length.field_1 % 128)) + 192 len 2 * ceil32(stor8.length.field_1 % 128)]), 
}

function _symbol() payable {
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor8.length.field_1):
                if 31 < uint255(stor8.length.field_1):
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor8.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        else:
            if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1 % 128:
                if 31 < stor8.length.field_1 % 128:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
        mem[ceil32(uint255(stor8.length.field_1)) + 192 len ceil32(uint255(stor8.length.field_1))] = mem[128 len ceil32(uint255(stor8.length.field_1))]
        if ceil32(uint255(stor8.length.field_1)) > uint255(stor8.length.field_1):
            mem[ceil32(uint255(stor8.length.field_1)) + uint255(stor8.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor8.length.field_1)), data=mem[128 len ceil32(uint255(stor8.length.field_1))], mem[(2 * ceil32(uint255(stor8.length.field_1))) + 192 len 2 * ceil32(uint255(stor8.length.field_1))]), 
    if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor8.length.field_1):
            if 31 < uint255(stor8.length.field_1):
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while uint255(stor8.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    else:
        if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1 % 128:
            if 31 < stor8.length.field_1 % 128:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor8.length.field_8)
    mem[ceil32(stor8.length.field_1 % 128) + 192 len ceil32(stor8.length.field_1 % 128)] = mem[128 len ceil32(stor8.length.field_1 % 128)]
    if ceil32(stor8.length.field_1 % 128) > stor8.length.field_1 % 128:
        mem[ceil32(stor8.length.field_1 % 128) + stor8.length.field_1 % 128 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1 % 128)], mem[(2 * ceil32(stor8.length.field_1 % 128)) + 192 len 2 * ceil32(stor8.length.field_1 % 128)]), 
}



}
