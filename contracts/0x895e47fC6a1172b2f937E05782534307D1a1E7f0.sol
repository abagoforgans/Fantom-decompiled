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
array of uint256 sub_0e9d1b6f;
mapping of uint256 sub_3e58372d;
mapping of uint256 sub_b3019e8c;

function sub_0e9d1b6f(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_0e9d1b6f[arg1]
    return sub_0e9d1b6f[arg1][arg2]
}

function sub_379612bd(?) payable {
    require calldata.size - 4 >= 32
    return sub_379612bd[arg1]
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

function setZapperStaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    require not sub_956f91f7Address
    sub_956f91f7Address = arg1
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

function addFarmTimeLocked(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_f2ba25fcAddress
    if sub_c8a4945a[address(arg1)] + (120 * 24 * 3600) < sub_c8a4945a[address(arg1)]:
        revert with 0, 'w'
    require block.timestamp > sub_c8a4945a[address(arg1)] + (120 * 24 * 3600)
    sub_590e4957[address(arg1)] = sub_379612bd[address(arg1)]
}

function initFarming() payable {
    require msg.sender == sub_f2ba25fcAddress
    require ext_code.size(sub_aa9c635eAddress)
    call sub_aa9c635eAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 10^14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor4 = 1
}

function unFarmBear(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_0e9d1b6f[msg.sender]:
        require idx < sub_0e9d1b6f[msg.sender]
        mem[0] = sub_0e9d1b6f[msg.sender][idx]
        mem[32] = 9
        if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx]]:
            idx = idx + 1
            continue 
        sub_3e58372d[stor11[msg.sender][idx]] = 0
        require ext_code.size(sub_aa9c635eAddress)
        call sub_aa9c635eAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, sub_3e58372d[stor11[msg.sender][idx]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_b3019e8c[stor11[msg.sender][idx]] = 0
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, sub_b3019e8c[stor11[msg.sender][idx]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Unfarmed(sub_3e58372d[stor11[msg.sender][idx]], msg.sender, arg1, sub_b3019e8c[stor11[msg.sender][idx]]);
    sub_3e58372d[0] = 0
    require ext_code.size(sub_aa9c635eAddress)
    call sub_aa9c635eAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, sub_3e58372d[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_b3019e8c[0] = 0
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
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
        revert with 0, 'w'
    if arg3 < sub_f910fdaa:
        revert with 0, 's'
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.totalSupply() with:
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
            while idx < sub_0e9d1b6f[msg.sender]:
                require idx < sub_0e9d1b6f[msg.sender]
                mem[0] = sub_0e9d1b6f[msg.sender][idx]
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx]]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx]:
                    if sub_3e58372d[stor11[msg.sender][idx]] < sub_3e58372d[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    if arg2 + sub_b3019e8c[stor11[msg.sender][idx]] < sub_b3019e8c[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor11[msg.sender][idx]] += arg2
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'w'
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor8.length] += arg2
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender]++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg2:
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
                else:
                    if sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / arg2 != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                        revert with 0, 'ow'
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2
                emit 0x513dad75: 0, arg2
                emit Farmed(0, msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'w'
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'w'
            sub_b3019e8c[stor8.length] += arg2
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender]++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_956f91f7Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
            else:
                if sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / arg2 != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                    revert with 0, 'ow'
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2
            emit 0x513dad75: 0, arg2
            emit Farmed(0, msg.sender, arg1, arg2);
        else:
            if sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / arg2 != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                revert with 0, 'ow'
            idx = 0
            while idx < sub_0e9d1b6f[msg.sender]:
                require idx < sub_0e9d1b6f[msg.sender]
                mem[0] = sub_0e9d1b6f[msg.sender][idx]
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx]]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx]:
                    if (sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2) + sub_3e58372d[stor11[msg.sender][idx]] < sub_3e58372d[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    sub_3e58372d[stor11[msg.sender][idx]] += sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2
                    if arg2 + sub_b3019e8c[stor11[msg.sender][idx]] < sub_b3019e8c[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor11[msg.sender][idx]] += arg2
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if (sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'w'
                    sub_3e58372d[stor8.length] += sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor8.length] += arg2
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender]++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg2:
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
                else:
                    if sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / arg2 != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                        revert with 0, 'ow'
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2
                emit 0x513dad75: 0, arg2
                emit Farmed(sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2, msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if (sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'w'
            sub_3e58372d[stor8.length] += sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'w'
            sub_b3019e8c[stor8.length] += arg2
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender]++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_956f91f7Address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2:
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
            else:
                if sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2 / arg2 != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                    revert with 0, 'ow'
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2
            emit 0x513dad75: 0, arg2
            emit Farmed(sub_590e4957[address(arg1)] / ext_call.return_data[0] * arg2, msg.sender, arg1, arg2);
    else:
        if arg3 * arg2 / arg2 != arg3:
            revert with 0, 'ow'
        if arg3 * arg2 / 100 > arg2:
            revert with 0, ''
        if not arg2 - (arg3 * arg2 / 100):
            idx = 0
            while idx < sub_0e9d1b6f[msg.sender]:
                require idx < sub_0e9d1b6f[msg.sender]
                mem[0] = sub_0e9d1b6f[msg.sender][idx]
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx]]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx]:
                    if sub_3e58372d[stor11[msg.sender][idx]] < sub_3e58372d[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    if arg2 + sub_b3019e8c[stor11[msg.sender][idx]] < sub_b3019e8c[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor11[msg.sender][idx]] += arg2
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'w'
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor8.length] += arg2
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender]++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, arg3 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg2 - (arg3 * arg2 / 100):
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
                else:
                    if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / arg2 - (arg3 * arg2 / 100) != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                        revert with 0, 'ow'
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0])
                emit 0x513dad75: arg3 * arg2 / 100, arg2 - (arg3 * arg2 / 100)
                emit Farmed(0, msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'w'
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'w'
            sub_b3019e8c[stor8.length] += arg2
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender]++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_956f91f7Address, arg3 * arg2 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2 - (arg3 * arg2 / 100):
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
            else:
                if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / arg2 - (arg3 * arg2 / 100) != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                    revert with 0, 'ow'
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0])
            emit 0x513dad75: arg3 * arg2 / 100, arg2 - (arg3 * arg2 / 100)
            emit Farmed(0, msg.sender, arg1, arg2);
        else:
            if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / arg2 - (arg3 * arg2 / 100) != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                revert with 0, 'ow'
            idx = 0
            while idx < sub_0e9d1b6f[msg.sender]:
                require idx < sub_0e9d1b6f[msg.sender]
                mem[0] = sub_0e9d1b6f[msg.sender][idx]
                mem[32] = 9
                if arg1 != sub_8b2a9fc5[stor11[msg.sender][idx]]:
                    idx = idx + 1
                    continue 
                if sub_0e9d1b6f[msg.sender][idx]:
                    if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) + sub_3e58372d[stor11[msg.sender][idx]] < sub_3e58372d[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    sub_3e58372d[stor11[msg.sender][idx]] = (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) + sub_3e58372d[stor11[msg.sender][idx]]
                    if arg2 + sub_b3019e8c[stor11[msg.sender][idx]] < sub_b3019e8c[stor11[msg.sender][idx]]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor11[msg.sender][idx]] += arg2
                else:
                    sub_8e6f4fb7.length++
                    sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
                    if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                        revert with 0, 'w'
                    sub_3e58372d[stor8.length] = (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) + sub_3e58372d[stor8.length]
                    sub_8b2a9fc5[stor8.length] = arg1
                    if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                        revert with 0, 'w'
                    sub_b3019e8c[stor8.length] += arg2
                    uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
                    sub_0e9d1b6f[msg.sender]++
                    sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
                require ext_code.size(arg1)
                call arg1.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_956f91f7Address, arg3 * arg2 / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                staticcall arg1.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg2 - (arg3 * arg2 / 100):
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
                else:
                    if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / arg2 - (arg3 * arg2 / 100) != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                        revert with 0, 'ow'
                    emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0])
                emit 0x513dad75: arg3 * arg2 / 100, arg2 - (arg3 * arg2 / 100)
                emit Farmed((arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]), msg.sender, arg1, arg2);
            sub_8e6f4fb7.length++
            sub_8e6f4fb7[sub_8e6f4fb7.length] = sub_8e6f4fb7.length
            if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) + sub_3e58372d[stor8.length] < sub_3e58372d[stor8.length]:
                revert with 0, 'w'
            sub_3e58372d[stor8.length] = (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) + sub_3e58372d[stor8.length]
            sub_8b2a9fc5[stor8.length] = arg1
            if arg2 + sub_b3019e8c[stor8.length] < sub_b3019e8c[stor8.length]:
                revert with 0, 'w'
            sub_b3019e8c[stor8.length] += arg2
            uint256(sub_9098ba90[stor8.length]) = msg.sender or Mask(96, 160, uint256(sub_9098ba90[stor8.length]))
            sub_0e9d1b6f[msg.sender]++
            sub_0e9d1b6f[msg.sender][sub_0e9d1b6f[msg.sender]] = sub_8e6f4fb7.length
            require ext_code.size(arg1)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args sub_956f91f7Address, arg3 * arg2 / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg2 - (arg3 * arg2 / 100):
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], 0
            else:
                if (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) / arg2 - (arg3 * arg2 / 100) != sub_590e4957[address(arg1)] / ext_call.return_data[0]:
                    revert with 0, 'ow'
                emit 0xbf642f30: sub_590e4957[address(arg1)] / ext_call.return_data[0], sub_590e4957[address(arg1)], ext_call.return_data[0], (arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0])
            emit 0x513dad75: arg3 * arg2 / 100, arg2 - (arg3 * arg2 / 100)
            emit Farmed((arg2 * sub_590e4957[address(arg1)] / ext_call.return_data[0]) - (arg3 * arg2 / 100 * sub_590e4957[address(arg1)] / ext_call.return_data[0]), msg.sender, arg1, arg2);
}



}
