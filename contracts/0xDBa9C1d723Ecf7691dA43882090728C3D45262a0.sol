contract main {




// =====================  Runtime code  =====================


#
#  - sub_707adb63(?)
#
address storeAddress;
uint256 sub_0134d1d3;
uint256 sub_c2f1fe59;
address reserveTokenAddress;
uint32 stor4;
address sub_dbd82d75Address;
uint256 stor4;
mapping of uint8 stor5;
array of address sub_95dec8a0;
mapping of address sub_2cc07946;
array of address sub_b420aae9;

function sub_0134d1d3(?) payable {
    return sub_0134d1d3
}

function sub_2cc07946(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_2cc07946[arg1][arg2]
}

function sub_95dec8a0(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg3 < uint256(sub_95dec8a0[arg1][arg2])
    return address(sub_95dec8a0[arg1][arg2][arg3])
}

function store() payable {
    return storeAddress
}

function sub_b420aae9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg3 < uint256(sub_b420aae9[arg1][arg2])
    return address(sub_b420aae9[arg1][arg2][arg3])
}

function sub_c2f1fe59(?) payable {
    return sub_c2f1fe59
}

function sub_d23cba90(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_dbd82d75(?) payable {
    return address(sub_dbd82d75Address)
}

function reserveToken() payable {
    return reserveTokenAddress
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_852c1d7c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    address(sub_dbd82d75Address) = address(arg1)
}

function sub_247c8751(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(sub_dbd82d75Address) != msg.sender:
            revert with 0, 'FeeRewardForwarder: Caller is not Governance or Beluga Multisig'
    stor5[address(arg1)] = 1
}

function sub_3622df79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(sub_dbd82d75Address) != msg.sender:
            revert with 0, 'FeeRewardForwarder: Caller is not Governance or Beluga Multisig'
    stor5[address(arg1)] = 0
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    if not arg1:
        revert with 0, 'Governable: New storage shouldn't be empty'
    storeAddress = arg1
}

function sub_221c41d1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    sub_2cc07946[address(arg1)][address(arg2)] = address(arg3)
}

function sub_640e970c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(sub_dbd82d75Address) != msg.sender:
            revert with 0, 'FeeRewardForwarder: Caller is not Governance or Beluga Multisig'
    if arg1 < sub_0134d1d3:
        revert with 0, 'FeeRewardForwarder: New denominator is lower than the numerator'
    sub_c2f1fe59 = arg1
}

function sub_89311609(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(sub_dbd82d75Address) != msg.sender:
            revert with 0, 'FeeRewardForwarder: Caller is not Governance or Beluga Multisig'
    if arg1 > sub_c2f1fe59:
        revert with 0, 'FeeRewardForwarder: New numerator is higher than the denominator'
    sub_0134d1d3 = arg1
}

function sub_6c58198d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + 101] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 68).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    uint256(sub_95dec8a0[address(cd[4])][address(cd[36])]) = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while uint256(sub_95dec8a0[address(cd[4])][address(cd[36])]) > idx:
            uint256(sub_95dec8a0[address(cd[4])][address(cd[36])][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 68).length) + 128 > idx:
            address(sub_95dec8a0[address(cd[4])][address(cd[36])][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while uint256(sub_95dec8a0[address(cd[4])][address(cd[36])]) > idx:
            uint256(sub_95dec8a0[address(cd[4])][address(cd[36])][idx]) = 0
            idx = idx + 1
            continue 
}

function sub_d6c07395(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + 101] = msg.sender
    require ext_code.size(storeAddress)
    staticcall storeAddress.isGovernance(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[floor32(('cd', 68).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Governable: Not governance'
    uint256(sub_b420aae9[address(cd[4])][address(cd[36])]) = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while uint256(sub_b420aae9[address(cd[4])][address(cd[36])]) > idx:
            uint256(sub_b420aae9[address(cd[4])][address(cd[36])][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 68).length) + 128 > idx:
            address(sub_b420aae9[address(cd[4])][address(cd[36])][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while uint256(sub_b420aae9[address(cd[4])][address(cd[36])]) > idx:
            uint256(sub_b420aae9[address(cd[4])][address(cd[36])][idx]) = 0
            idx = idx + 1
            continue 
}

function salvage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(sub_dbd82d75Address) != msg.sender:
            revert with 0, 'FeeRewardForwarder: Caller is not Governance or Beluga Multisig'
    mem[ceil32(return_data.size) + 132] = address(sub_dbd82d75Address)
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor4)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
