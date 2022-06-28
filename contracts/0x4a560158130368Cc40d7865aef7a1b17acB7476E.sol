contract main {




// =====================  Runtime code  =====================


address sub_f2ba25fcAddress;
address sub_aa9c635eAddress;
address sub_956f91f7Address;
uint256 sub_f910fdaa;
uint8 stor4;
mapping of uint256 sub_590e4957;
mapping of uint256 sub_379612bd;
mapping of uint256 sub_c8a4945a;
array of uint256 sub_8e6f4fb7;
mapping of address sub_8b2a9fc5;
mapping of address sub_9098ba90;
array of struct sub_0e9d1b6f;
mapping of uint256 sub_3e58372d;
mapping of uint256 sub_b3019e8c;
uint256 sub_8a5578cc;
address sub_3a3bbe58Address;

function sub_0e9d1b6f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_0e9d1b6f[arg1].field_0
    return sub_0e9d1b6f[arg1][arg2].field_0
}

function sub_379612bd(?) payable {
    require calldata.size - 4 >= 32
    return sub_379612bd[arg1]
}

function sub_3a3bbe58(?) payable {
    return sub_3a3bbe58Address
}

function sub_3e58372d(?) payable {
    require calldata.size - 4 >= 32
    return sub_3e58372d[arg1]
}

function sub_590e4957(?) payable {
    require calldata.size - 4 >= 32
    return sub_590e4957[arg1]
}

function sub_78600a4f(?) payable {
    return bool(stor4)
}

function sub_8a5578cc(?) payable {
    return sub_8a5578cc
}

function sub_8b2a9fc5(?) payable {
    require calldata.size - 4 >= 32
    return sub_8b2a9fc5[arg1]
}

function sub_8e6f4fb7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8e6f4fb7.length
    return sub_8e6f4fb7[arg1]
}

function sub_9098ba90(?) payable {
    require calldata.size - 4 >= 32
    return address(sub_9098ba90[arg1])
}

function sub_956f91f7(?) payable {
    return sub_956f91f7Address
}

function sub_aa9c635e(?) payable {
    return sub_aa9c635eAddress
}

function sub_b3019e8c(?) payable {
    require calldata.size - 4 >= 32
    return sub_b3019e8c[arg1]
}

function userLockupsLength(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_0e9d1b6f[address(arg1)].field_0
}

function sub_c8a4945a(?) payable {
    require calldata.size - 4 >= 32
    return sub_c8a4945a[arg1]
}

function sub_f2ba25fc(?) payable {
    return sub_f2ba25fcAddress
}

function sub_f910fdaa(?) payable {
    return sub_f910fdaa
}

function _fallback() payable {
    revert
}

function setFarmSarvPct(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    sub_f910fdaa = arg1
}

function migratefarmCEO(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    sub_f2ba25fcAddress = arg1
}

function recallAnnouncementFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    sub_c8a4945a[address(arg1)] = 0
}

function removeFarm(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_f2ba25fcAddress
    sub_590e4957[address(arg1)] = arg2
}

function setArBear(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    require not sub_aa9c635eAddress
    sub_aa9c635eAddress = arg1
}

function annZapperStaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    sub_8a5578cc = block.timestamp
    sub_3a3bbe58Address = arg1
}

function _addFarmInitialDuringSetupOnly(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_f2ba25fcAddress
    require not stor4
    sub_590e4957[address(arg1)] = arg2
}

function announceFarm(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == sub_f2ba25fcAddress
    sub_c8a4945a[address(arg1)] = block.timestamp
    sub_379612bd[address(arg1)] = arg2
}

function initFarming() payable {
    require msg.sender == sub_f2ba25fcAddress
    require ext_code.size(sub_aa9c635eAddress)
    call sub_aa9c635eAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4 = 1
}

function addFarmTimeLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    if sub_c8a4945a[address(arg1)] + (120 * 24 * 3600) < sub_c8a4945a[address(arg1)]:
        revert with 0, 'addw'
    require block.timestamp > sub_c8a4945a[address(arg1)] + (120 * 24 * 3600)
    sub_590e4957[address(arg1)] = sub_379612bd[address(arg1)]
}

function setZapperStaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    if not sub_956f91f7Address:
        sub_956f91f7Address = arg1
    else:
        if sub_8a5578cc + (168 * 24 * 3600) < sub_8a5578cc:
            revert with 0, 'addw'
        require block.timestamp > sub_8a5578cc + (168 * 24 * 3600)
        sub_956f91f7Address = sub_3a3bbe58Address
}

function userLockups(address arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_0e9d1b6f[address(arg1)].field_0:
        mem[(32 * sub_0e9d1b6f[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_0e9d1b6f[address(arg1)].field_0) + 160] = sub_0e9d1b6f[address(arg1)].field_0
        mem[(32 * sub_0e9d1b6f[address(arg1)].field_0) + 192 len floor32(sub_0e9d1b6f[address(arg1)].field_0)] = mem[128 len floor32(sub_0e9d1b6f[address(arg1)].field_0)]
        return memory
          from (32 * sub_0e9d1b6f[address(arg1)].field_0) + 128
           len (96 * sub_0e9d1b6f[address(arg1)].field_0) + 64
    mem[128] = sub_0e9d1b6f[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_0e9d1b6f[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_0e9d1b6f[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_0e9d1b6f[address(arg1)].field_0) + 192 len floor32(sub_0e9d1b6f[address(arg1)].field_0)] = mem[128 len floor32(sub_0e9d1b6f[address(arg1)].field_0)]
    return Array(len=sub_0e9d1b6f[address(arg1)].field_0, data=mem[128 len floor32(sub_0e9d1b6f[address(arg1)].field_0)], mem[(32 * sub_0e9d1b6f[address(arg1)].field_0) + floor32(sub_0e9d1b6f[address(arg1)].field_0) + 192 len (32 * sub_0e9d1b6f[address(arg1)].field_0) - floor32(sub_0e9d1b6f[address(arg1)].field_0)]), 
}

function unFarmBear(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_0e9d1b6f[msg.sender].field_0:
        require idx < sub_0e9d1b6f[msg.sender].field_0
        mem[0] = sub_0e9d1b6f[msg.sender][idx].field_0
        mem[32] = 9
        if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx].field_0]:
            idx = idx + 1
            continue 
        sub_3e58372d[stor11[msg.sender][idx].field_0] = 0
        require ext_code.size(sub_aa9c635eAddress)
        call sub_aa9c635eAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, sub_3e58372d[stor11[msg.sender][idx].field_0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_b3019e8c[stor11[msg.sender][idx].field_0] = 0
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_b3019e8c[stor11[msg.sender][idx].field_0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Unfarmed(sub_3e58372d[stor11[msg.sender][idx].field_0], msg.sender, arg1, sub_b3019e8c[stor11[msg.sender][idx].field_0]);
    sub_3e58372d[0] = 0
    require ext_code.size(sub_aa9c635eAddress)
    call sub_aa9c635eAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, sub_3e58372d[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_b3019e8c[0] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_b3019e8c[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Unfarmed(sub_3e58372d[0], msg.sender, arg1, sub_b3019e8c[0]);
}

function farmBear(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if not sub_590e4957[address(arg1)]:
        revert with 0, 'fw'
    if arg3 < sub_f910fdaa:
        revert with 0, 's'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, ''
    if not arg2:
        if 0 > arg2:
            revert with 0, ''
        if not arg2:
            idx = 0
            while idx < sub_0e9d1b6f[msg.sender].field_0:
                require idx < sub_0e9d1b6f[msg.sender].field_0
                mem[0] = sub_0e9d1b6f[msg.sender][idx].field_0
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx].field_0]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx].field_0:
                    if sub_3e58372d[stor11[msg.sender][idx].field_0] < sub_3e58372d[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    if arg2 + sub_b3019e8c[stor11[msg.sender][idx].field_0] < sub_b3019e8c[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor11[msg.sender][idx].field_0] += arg2
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'addw'
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor8.length] += arg2
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender].field_0++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_956f91f7Address)
                call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, address(arg1), msg.sender, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_aa9c635eAddress)
                call sub_aa9c635eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Farmed(0, msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'addw'
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'addw'
            sub_b3019e8c[stor8.length] += arg2
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender].field_0++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_956f91f7Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_956f91f7Address)
            call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, address(arg1), msg.sender, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_aa9c635eAddress)
            call sub_aa9c635eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Farmed(0, msg.sender, arg1, arg2);
        else:
            if sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / arg2 != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                revert with 0, 'ow'
            idx = 0
            while idx < sub_0e9d1b6f[msg.sender].field_0:
                require idx < sub_0e9d1b6f[msg.sender].field_0
                mem[0] = sub_0e9d1b6f[msg.sender][idx].field_0
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx].field_0]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx].field_0:
                    if (sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9) + sub_3e58372d[stor11[msg.sender][idx].field_0] < sub_3e58372d[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    sub_3e58372d[stor11[msg.sender][idx].field_0] += sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9
                    if arg2 + sub_b3019e8c[stor11[msg.sender][idx].field_0] < sub_b3019e8c[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor11[msg.sender][idx].field_0] += arg2
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if (sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'addw'
                    sub_3e58372d[stor8.length] += sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor8.length] += arg2
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender].field_0++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_956f91f7Address)
                call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, address(arg1), msg.sender, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_aa9c635eAddress)
                call sub_aa9c635eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Farmed(sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9, msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if (sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'addw'
            sub_3e58372d[stor8.length] += sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'addw'
            sub_b3019e8c[stor8.length] += arg2
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender].field_0++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_956f91f7Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_956f91f7Address)
            call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, address(arg1), msg.sender, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_aa9c635eAddress)
            call sub_aa9c635eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Farmed(sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / 10^9, msg.sender, arg1, arg2);
    else:
        if arg3 * arg2 / arg2 != arg3:
            revert with 0, 'ow'
        if arg3 * arg2 / 100 > arg2:
            revert with 0, ''
        if not arg2 - (arg3 * arg2 / 100):
            idx = 0
            while idx < sub_0e9d1b6f[msg.sender].field_0:
                require idx < sub_0e9d1b6f[msg.sender].field_0
                mem[0] = sub_0e9d1b6f[msg.sender][idx].field_0
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx].field_0]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx].field_0:
                    if sub_3e58372d[stor11[msg.sender][idx].field_0] < sub_3e58372d[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    if arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor11[msg.sender][idx].field_0] < sub_b3019e8c[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor11[msg.sender][idx].field_0] = arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor11[msg.sender][idx].field_0]
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'addw'
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor8.length] = arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length]
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender].field_0++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, arg3 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_956f91f7Address)
                call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3 * arg2 / 100, address(arg1), msg.sender, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_aa9c635eAddress)
                call sub_aa9c635eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Farmed(0, msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'addw'
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'addw'
            sub_b3019e8c[stor8.length] = arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length]
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender].field_0++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_956f91f7Address, arg3 * arg2 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_956f91f7Address)
            call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3 * arg2 / 100, address(arg1), msg.sender, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_aa9c635eAddress)
            call sub_aa9c635eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Farmed(0, msg.sender, arg1, arg2);
        else:
            if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / arg2 - (arg3 * arg2 / 100) != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                revert with 0, 'ow'
            idx = 0
            while idx < sub_0e9d1b6f[msg.sender].field_0:
                require idx < sub_0e9d1b6f[msg.sender].field_0
                mem[0] = sub_0e9d1b6f[msg.sender][idx].field_0
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx].field_0]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx].field_0:
                    if ((arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9) + sub_3e58372d[stor11[msg.sender][idx].field_0] < sub_3e58372d[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    sub_3e58372d[stor11[msg.sender][idx].field_0] += (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9
                    if arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor11[msg.sender][idx].field_0] < sub_b3019e8c[stor11[msg.sender][idx].field_0]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor11[msg.sender][idx].field_0] = arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor11[msg.sender][idx].field_0]
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if ((arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'addw'
                    sub_3e58372d[stor8.length] += (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'addw'
                    sub_b3019e8c[stor8.length] = arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length]
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender].field_0++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, arg3 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_956f91f7Address)
                call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args arg3 * arg2 / 100, address(arg1), msg.sender, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_aa9c635eAddress)
                call sub_aa9c635eAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit Farmed((arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9, msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if ((arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'addw'
            sub_3e58372d[stor8.length] += (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'addw'
            sub_b3019e8c[stor8.length] = arg2 - (arg3 * arg2 / 100) + sub_b3019e8c[stor8.length]
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender].field_0++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender].field_0].field_0 = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_956f91f7Address, arg3 * arg2 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_956f91f7Address)
            call sub_956f91f7Address.zapandstake(uint256 arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3 * arg2 / 100, address(arg1), msg.sender, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_aa9c635eAddress)
            call sub_aa9c635eAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Farmed((arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / 10^9, msg.sender, arg1, arg2);
}



}
