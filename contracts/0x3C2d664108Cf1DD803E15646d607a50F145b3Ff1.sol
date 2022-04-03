contract main {




// =====================  Runtime code  =====================


address owner;
address nebulaAddress;
uint256 totalSupply;
mapping of uint8 stor3;
mapping of uint256 impact;
mapping of uint256 pendingAmount;
mapping of address users;
uint256 userCount;
uint256 sub_c0544bf1;
uint256 sub_db5a9d50;
uint256 sub_e70d43cf;
uint256 sub_c3b12eb2;
uint256 stor12;
uint8 stor13;
uint8 sub_1259b484; offset 8
address sub_7b6f1e07Address; offset 16
uint256 stor13; offset 8
address sub_006ae91eAddress;
mapping of uint8 stor15;

function sub_006ae91e(?) payable {
    return sub_006ae91eAddress
}

function userCount() payable {
    return userCount
}

function sub_1259b484(?) payable {
    return bool(sub_1259b484)
}

function totalSupply() payable {
    return totalSupply
}

function sub_1a7b4240(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function impact(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return impact[arg1]
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1]
}

function nebula() payable {
    return nebulaAddress
}

function getPendingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pendingAmount[address(arg1)]
}

function sub_7b6f1e07(?) payable {
    return sub_7b6f1e07Address
}

function owner() payable {
    return owner
}

function sub_a5f6f054(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return pendingAmount[arg1]
}

function sub_c0544bf1(?) payable {
    return sub_c0544bf1
}

function sub_c3b12eb2(?) payable {
    return sub_c3b12eb2
}

function sub_db5a9d50(?) payable {
    return sub_db5a9d50
}

function sub_e70d43cf(?) payable {
    return sub_e70d43cf
}

function allowedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function transferNebula(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    nebulaAddress = arg1
}

function removeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[address(arg1)] = 0
}

function addNewToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[address(arg1)] = 1
}

function transferFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_006ae91eAddress = arg1
}

function sub_5b56dcbe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_7b6f1e07Address = address(arg1)
}

function setClaimingAllowance(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor13.field_8) = Mask(248, 0, arg1)
}

function deserializeUint(bytes arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if var86002 >= arg2 + arg3:
        return 0
    if var88001 >= arg1.length:
        revert with 'NH{q', 50
    # nil
}

function claim() payable {
    if not sub_1259b484:
        revert with 0, 'claim is shut down by the owner'
    require ext_code.size(sub_7b6f1e07Address)
    call sub_7b6f1e07Address.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, pendingAmount[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_db5a9d50 < pendingAmount[address(msg.sender)]:
        revert with 'NH{q', 17
    sub_db5a9d50 -= pendingAmount[address(msg.sender)]
    pendingAmount[address(msg.sender)] = 0
}

function deserializeAddress(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require ext_code.size(this.address)
    staticcall this.address.0x9b94f08b with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), arg2, 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[12 len 20]
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if stor12 > -2001:
        revert with 'NH{q', 17
    if stor12 + 2000 <= userCount:
        idx = stor12
        while idx < stor12 + 2000:
            mem[0] = users[idx]
            mem[32] = 4
            require ext_code.size(arg1)
            call arg1.0x6ac4e8ea with:
                 gas gas_remaining wei
                args users[idx], pendingAmount[stor6[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = 0x9558042b00000000000000000000000000000000000000000000000000000000
            mem[100] = users[idx]
            mem[132] = impact[stor6[idx]]
            require ext_code.size(arg1)
            call arg1.0x9558042b with:
                 gas gas_remaining wei
                args users[idx], impact[stor6[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor12 + 2000 != userCount:
            stor12 += 2000
        else:
            stor12 = 0
            uint8(stor13.field_0) = 0
    else:
        idx = stor12
        while idx < userCount:
            mem[0] = users[idx]
            mem[32] = 4
            require ext_code.size(arg1)
            call arg1.0x6ac4e8ea with:
                 gas gas_remaining wei
                args users[idx], pendingAmount[stor6[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = 0x9558042b00000000000000000000000000000000000000000000000000000000
            mem[100] = users[idx]
            mem[132] = impact[stor6[idx]]
            require ext_code.size(arg1)
            call arg1.0x9558042b with:
                 gas gas_remaining wei
                args users[idx], impact[stor6[idx]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if userCount != userCount:
            stor12 = userCount
        else:
            stor12 = 0
            uint8(stor13.field_0) = 0
}

function sub_6bb10536(?) payable {
    if not uint8(stor13.field_0):
        revert with 0, 'This contract is outdated.'
    if sub_c3b12eb2 > -2001:
        revert with 'NH{q', 17
    if not sub_c3b12eb2:
        require ext_code.size(sub_7b6f1e07Address)
        staticcall sub_7b6f1e07Address.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_db5a9d50:
            revert with 'NH{q', 17
        sub_c0544bf1 = ext_call.return_data[0] - sub_db5a9d50
        sub_e70d43cf = sub_c0544bf1
    if not sub_c3b12eb2:
        require ext_code.size(sub_7b6f1e07Address)
        staticcall sub_7b6f1e07Address.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args sub_006ae91eAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_7b6f1e07Address)
        call sub_7b6f1e07Address.transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args sub_006ae91eAddress, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'error transferring from farm'
    if sub_c3b12eb2 + 2000 <= userCount:
        idx = sub_c3b12eb2
        while idx < sub_c3b12eb2 + 2000:
            if sub_c0544bf1 and impact[stor6[idx]] > -1 / sub_c0544bf1:
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            mem[0] = users[idx]
            mem[32] = 5
            if pendingAmount[stor6[idx]] > -(sub_c0544bf1 * impact[stor6[idx]] / totalSupply) - 1:
                revert with 'NH{q', 17
            pendingAmount[stor6[idx]] += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            if sub_db5a9d50 > -(sub_c0544bf1 * impact[stor6[idx]] / totalSupply) - 1:
                revert with 'NH{q', 17
            sub_db5a9d50 += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if sub_c3b12eb2 + 2000 != userCount:
            sub_c3b12eb2 += 2000
        else:
            sub_c3b12eb2 = 0
    else:
        idx = sub_c3b12eb2
        while idx < userCount:
            if sub_c0544bf1 and impact[stor6[idx]] > -1 / sub_c0544bf1:
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            mem[0] = users[idx]
            mem[32] = 5
            if pendingAmount[stor6[idx]] > -(sub_c0544bf1 * impact[stor6[idx]] / totalSupply) - 1:
                revert with 'NH{q', 17
            pendingAmount[stor6[idx]] += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            if sub_db5a9d50 > -(sub_c0544bf1 * impact[stor6[idx]] / totalSupply) - 1:
                revert with 'NH{q', 17
            sub_db5a9d50 += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if userCount != userCount:
            sub_c3b12eb2 = userCount
        else:
            sub_c3b12eb2 = 0
}

function attachValue(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if nebulaAddress != msg.sender:
        revert with 0, 'Caller is not nebula'
    mem[196 len arg1.length] = arg1[all]
    mem[arg1.length + 196] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x96013dc6 with:
            gas gas_remaining wei
           args 64, 0, arg1.length, arg1[all], mem[arg1.length + 196 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(this.address)
    staticcall this.address.0x96013dc6 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 228 len arg1.length] = arg1[all]
    mem[(2 * ceil32(return_data.size)) + arg1.length + 228] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x9b94f08b with:
            gas gas_remaining wei
           args 96, 40, 32, arg1.length, arg1[all], mem[(2 * ceil32(return_data.size)) + arg1.length + 228 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228 len arg1.length] = arg1[all]
    mem[(4 * ceil32(return_data.size)) + arg1.length + 228] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x9b94f08b with:
            gas gas_remaining wei
           args 96, 72, 32, arg1.length, arg1[all], mem[(4 * ceil32(return_data.size)) + arg1.length + 228 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228 len arg1.length] = arg1[all]
    mem[(6 * ceil32(return_data.size)) + arg1.length + 228] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x9b94f08b with:
            gas gas_remaining wei
           args 96, 104, 32, arg1.length, arg1[all], mem[(6 * ceil32(return_data.size)) + arg1.length + 228 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if bool(stor15[ext_call.return_data[0]]) != 1:
        stor15[ext_call.return_data[0]] = 1
        emit Transfer(address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]);
        if stor3[address(ext_call.return_data[0])]:
            if ext_call.return_data[0] != 1:
                if ext_call.return_data[0] == 2:
                    if impact[address(ext_call.return_data[0])] >= ext_call.return_data[0]:
                        if impact[address(ext_call.return_data[0])] < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        impact[address(ext_call.return_data[0])] -= ext_call.return_data[0]
                        if totalSupply < ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        totalSupply -= ext_call.return_data[0]
            else:
                if not impact[address(ext_call.return_data[0])]:
                    users[stor7] = address(ext_call.return_data[0])
                    if userCount > -2:
                        revert with 'NH{q', 17
                    userCount++
                if impact[address(ext_call.return_data[0])] > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                impact[address(ext_call.return_data[0])] += ext_call.return_data[0]
                if totalSupply > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                totalSupply += ext_call.return_data[0]
}



}
