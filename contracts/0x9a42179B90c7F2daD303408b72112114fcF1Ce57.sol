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
uint256 sub_c3b12eb2;
uint256 stor12;
uint8 stor13;
uint8 withdrawAllowance; offset 8
uint8 sub_1259b484; offset 16
address sub_7b6f1e07Address; offset 24
uint256 stor13; offset 16
uint256 stor13; offset 8
address sub_006ae91eAddress;

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

function impact(address arg1) payable {
    require calldata.size - 4 >= 32
    return impact[arg1]
}

function users(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return users[arg1]
}

function nebula() payable {
    return nebulaAddress
}

function getPendingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
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
    return pendingAmount[arg1]
}

function sub_c0544bf1(?) payable {
    return sub_c0544bf1
}

function withdrawAllowance() payable {
    return bool(withdrawAllowance)
}

function sub_c3b12eb2(?) payable {
    return sub_c3b12eb2
}

function sub_db5a9d50(?) payable {
    return sub_db5a9d50
}

function allowedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function sub_5b56dcbe(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_7b6f1e07Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function transferNebula(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    nebulaAddress = arg1
}

function removeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[address(arg1)] = 0
}

function addNewToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3[address(arg1)] = 1
}

function transferFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    sub_006ae91eAddress = arg1
}

function toggleWithdraw(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor13.field_8) = Mask(248, 0, arg1)
}

function setClaimingAllowance(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(240, 0, stor13.field_16) = Mask(240, 0, arg1)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not withdrawAllowance:
        revert with 0, 'withdraw not allowed'
    if arg1 > impact[address(msg.sender)]:
        revert with 0, 'you don't have so much impact'
    impact[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit withdrawEvent(msg.sender, arg1);
}

function claim() payable {
    if not sub_1259b484:
        revert with 0, 'claim is shut down by the owner'
    require ext_code.size(sub_7b6f1e07Address)
    call sub_7b6f1e07Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, pendingAmount[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_db5a9d50 -= pendingAmount[address(msg.sender)]
    pendingAmount[address(msg.sender)] = 0
}

function deserializeUint(bytes arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    idx = arg2
    while idx < arg2 + arg3:
        require idx < arg1.length
        idx = idx + 1
        continue 
    mem[ceil32(arg1.length) + 128] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function deserializeAddress(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(this.address)
    staticcall this.address with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), arg2, 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[12 len 20]
    return 0, 
           Mask(8 * -ceil32(arg1.length) + arg1.length + 28, 0, 0),
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function attachValue(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
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
    require ext_code.size(this.address)
    staticcall this.address.0x96013dc6 with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=arg1[all]), 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[228 len arg1.length] = arg1[all]
    mem[arg1.length + 228] = 0
    require ext_code.size(this.address)
    staticcall this.address.0x9b94f08b with:
            gas gas_remaining wei
           args 0, 96, 40, 32, arg1.length, arg1[all], mem[arg1.length + 228 len ceil32(arg1.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor3[address(ext_call.return_data[0])]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe7468697320746f6b656e206973206e6f7420737570706f7274656420627920747265737572,
                    Mask(208, 0, arg1.length)
    if not impact[address(ext_call.return_data[0])]:
        users[stor7] = address(ext_call.return_data[0])
        userCount++
    impact[address(ext_call.return_data[0])] += ext_call.return_data[0]
    totalSupply += ext_call.return_data[0]
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
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
    if not sub_c3b12eb2:
        require ext_code.size(sub_7b6f1e07Address)
        staticcall sub_7b6f1e07Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_c0544bf1 = ext_call.return_data[0] - sub_db5a9d50
    if not sub_c3b12eb2:
        require ext_code.size(sub_7b6f1e07Address)
        staticcall sub_7b6f1e07Address.0xdd62ed3e with:
                gas gas_remaining wei
               args sub_006ae91eAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_7b6f1e07Address)
        call sub_7b6f1e07Address.0x23b872dd with:
             gas gas_remaining wei
            args sub_006ae91eAddress, address(this.address), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'error transferring from farm'
    if sub_c3b12eb2 + 2000 <= userCount:
        idx = sub_c3b12eb2
        while idx < sub_c3b12eb2 + 2000:
            require totalSupply
            mem[0] = users[idx]
            mem[32] = 5
            pendingAmount[stor6[idx]] += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            sub_db5a9d50 += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            idx = idx + 1
            continue 
        if sub_c3b12eb2 + 2000 != userCount:
            sub_c3b12eb2 += 2000
        else:
            sub_c3b12eb2 = 0
    else:
        idx = sub_c3b12eb2
        while idx < userCount:
            require totalSupply
            mem[0] = users[idx]
            mem[32] = 5
            pendingAmount[stor6[idx]] += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            sub_db5a9d50 += sub_c0544bf1 * impact[stor6[idx]] / totalSupply
            idx = idx + 1
            continue 
        if userCount != userCount:
            sub_c3b12eb2 = userCount
        else:
            sub_c3b12eb2 = 0
}



}
