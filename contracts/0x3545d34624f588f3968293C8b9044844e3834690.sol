contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''

const sub_c735f63a(?) = 18446744073709551616

const sub_e48d79a5(?) = 1

const INITIAL_SUPPLY = 50000000 * 10^18

const BURN_RATE = 10

const MIN_FREEZE_AMOUNT = 10 * 10^18


address fairLaunchAddress;
uint256 totalSupply;
uint256 totalFrozen;
mapping of struct frozenOf;
uint256 stor4;
address stor5;
uint256 sub_e2ba3339;
uint256 sub_699e11d3;
address sub_6b50a732Address;

function totalSupply() payable {
    return totalSupply
}

function frozenOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return frozenOf[address(arg1)].field_512
}

function totalFrozen() payable {
    return totalFrozen
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(frozenOf[address(arg1)].field_0)
}

function sub_699e11d3(?) payable {
    return sub_699e11d3
}

function sub_6b50a732(?) payable {
    return sub_6b50a732Address
}

function fairLaunch() payable {
    return fairLaunchAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return frozenOf[address(arg1)][3][address(arg2)].field_0
}

function sub_e2ba3339(?) payable {
    return sub_e2ba3339
}

function _fallback() payable {
    revert
}

function migrateChefBreeder(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    stor5 = arg1
}

function setBreederFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    sub_e2ba3339 = arg1
}

function setBreederFactorCreation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    sub_699e11d3 = arg1
}

function setBreederTipLover(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    sub_6b50a732Address = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512)
}

function sub_f03df7f8(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor5
    require not fairLaunchAddress
    fairLaunchAddress = arg1
}

function dividendsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor4) - frozenOf[address(arg1)].field_1024) >> 64)
}

function whitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor5
    frozenOf[address(arg1)].field_0 = uint8(arg2)
    emit Whitelist(arg2, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    frozenOf[msg.sender][3][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require totalFrozen
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg1
    frozenOf[msg.sender].field_256 -= arg1
    require totalFrozen
    stor4 += arg1 << 64 / totalFrozen
    emit 0xfeddf252: arg1, msg.sender, this.address
}

function allInfoFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply, 
           totalFrozen,
           frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512,
           frozenOf[address(arg1)].field_512,
           Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor4) - frozenOf[address(arg1)].field_1024) >> 64
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg1
    require frozenOf[address(msg.sender)].field_512 + arg1 >= 10 * 10^18
    totalFrozen += arg1
    frozenOf[msg.sender].field_512 += arg1
    frozenOf[msg.sender].field_1024 += arg1 * stor4
    emit 0xfeddf252: arg1, msg.sender, this.address
    emit Stake(arg1, msg.sender);
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require frozenOf[address(msg.sender)].field_512 >= arg1
    require totalFrozen
    stor4 += 10 * arg1 / 100 << 64 / totalFrozen
    totalFrozen -= arg1
    frozenOf[msg.sender].field_256 -= 10 * arg1 / 100
    frozenOf[msg.sender].field_512 -= arg1
    frozenOf[msg.sender].field_1024 += -1 * arg1 * stor4
    emit 0xfeddf252: (arg1 - (10 * arg1 / 100)), this.address, msg.sender
    emit Unstake(arg1, msg.sender);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg1
    frozenOf[msg.sender].field_256 -= arg1
    if not totalFrozen:
        totalSupply -= arg1
        emit 0xfeddf252: arg1, msg.sender, 0
        emit Burn(arg1);
    else:
        require totalFrozen
        stor4 += Mask(192, 1, arg1) << 63 / totalFrozen
        emit 0xfeddf252: (arg1 / 2), msg.sender, this.address
        totalSupply -= arg1 / 2
        emit 0xfeddf252: (arg1 / 2), msg.sender, 0
        emit Burn((arg1 / 2));
}

function harvest() payable {
    frozenOf[msg.sender].field_1024 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor4) - frozenOf[address(msg.sender)].field_1024)
    frozenOf[msg.sender].field_256 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor4) - frozenOf[address(msg.sender)].field_1024) >> 64
    emit 0xfeddf252: (Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor4) - frozenOf[address(msg.sender)].field_1024) >> 64), this.address, msg.sender
    emit Harvest((Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor4) - frozenOf[address(msg.sender)].field_1024) >> 64), msg.sender);
    return (Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor4) - frozenOf[address(msg.sender)].field_1024) >> 64)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(fairLaunchAddress)
    staticcall fairLaunchAddress.0x5a702e94 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not frozenOf[address(msg.sender)].field_0:
        require ext_call.return_data[0]
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg2
    frozenOf[address(msg.sender)].field_256 -= arg2
    if totalSupply - (10 * arg2 / 100) < 500000 * 10^18:
        frozenOf[address(arg1)].field_256 += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
    else:
        if frozenOf[address(msg.sender)].field_0:
            frozenOf[address(arg1)].field_256 += arg2
            emit 0xfeddf252: arg2, msg.sender, arg1
        else:
            frozenOf[address(arg1)].field_256 = arg2 - (10 * arg2 / 100) + frozenOf[address(arg1)].field_256
            emit 0xfeddf252: (arg2 - (10 * arg2 / 100)), msg.sender, arg1
            if 10 * arg2 / 100:
                if not totalFrozen:
                    totalSupply -= 10 * arg2 / 100
                    emit 0xfeddf252: (10 * arg2 / 100), msg.sender, 0
                    emit Burn((10 * arg2 / 100));
                else:
                    require totalFrozen
                    stor4 += Mask(192, 1, 10 * arg2 / 100) << 63 / totalFrozen
                    emit 0xfeddf252: (10 * arg2 / 100 / 2), msg.sender, this.address
                    totalSupply -= 10 * arg2 / 100 / 2
                    emit 0xfeddf252: (10 * arg2 / 100 / 2), msg.sender, 0
                    emit Burn((10 * arg2 / 100 / 2));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= frozenOf[address(arg1)][3][msg.sender].field_0
    frozenOf[address(arg1)][3][msg.sender].field_0 -= arg3
    require ext_code.size(fairLaunchAddress)
    staticcall fairLaunchAddress.0x5a702e94 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not frozenOf[address(arg1)].field_0:
        require ext_call.return_data[0]
    require frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512 >= arg3
    frozenOf[address(arg1)].field_256 -= arg3
    if totalSupply - (10 * arg3 / 100) < 500000 * 10^18:
        frozenOf[address(arg2)].field_256 += arg3
        emit 0xfeddf252: arg3, arg1, arg2
    else:
        if frozenOf[address(arg1)].field_0:
            frozenOf[address(arg2)].field_256 += arg3
            emit 0xfeddf252: arg3, arg1, arg2
        else:
            frozenOf[address(arg2)].field_256 = arg3 - (10 * arg3 / 100) + frozenOf[address(arg2)].field_256
            emit 0xfeddf252: (arg3 - (10 * arg3 / 100)), arg1, arg2
            if 10 * arg3 / 100:
                if not totalFrozen:
                    totalSupply -= 10 * arg3 / 100
                    emit 0xfeddf252: (10 * arg3 / 100), arg1, 0
                    emit Burn((10 * arg3 / 100));
                else:
                    require totalFrozen
                    stor4 += Mask(192, 1, 10 * arg3 / 100) << 63 / totalFrozen
                    emit 0xfeddf252: (10 * arg3 / 100 / 2), arg1, this.address
                    totalSupply -= 10 * arg3 / 100 / 2
                    emit 0xfeddf252: (10 * arg3 / 100 / 2), arg1, 0
                    emit Burn((10 * arg3 / 100 / 2));
    return 1
}

function bulkTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require ext_code.size(fairLaunchAddress)
        staticcall fairLaunchAddress.0x5a702e94 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not frozenOf[address(msg.sender)].field_0:
            require ext_call.return_data[0]
        require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= cd[((32 * idx) + arg2 + 36)]
        frozenOf[address(msg.sender)].field_256 -= cd[((32 * idx) + arg2 + 36)]
        mem[32] = 3
        if totalSupply - (10 * cd[((32 * idx) + arg2 + 36)] / 100) < 500000 * 10^18:
            frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 += cd[((32 * idx) + arg2 + 36)]
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            emit 0xfeddf252: cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)])
        else:
            if frozenOf[address(msg.sender)].field_0:
                frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 += cd[((32 * idx) + arg2 + 36)]
                mem[96] = cd[((32 * idx) + arg2 + 36)]
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                emit 0xfeddf252: cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)])
            else:
                frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 = cd[((32 * idx) + arg2 + 36)] - (10 * cd[((32 * idx) + arg2 + 36)] / 100) + frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256
                mem[96] = cd[((32 * idx) + arg2 + 36)] - (10 * cd[((32 * idx) + arg2 + 36)] / 100)
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                emit 0xfeddf252: (cd[((32 * idx) + arg2 + 36)] - (10 * cd[((32 * idx) + arg2 + 36)] / 100)), msg.sender, address(cd[((32 * idx) + arg1 + 36)])
                if 10 * cd[((32 * idx) + arg2 + 36)] / 100:
                    if not totalFrozen:
                        totalSupply -= 10 * cd[((32 * idx) + arg2 + 36)] / 100
                        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                        emit 0xfeddf252: (10 * cd[((32 * idx) + arg2 + 36)] / 100), msg.sender, 0
                        mem[96] = 10 * cd[((32 * idx) + arg2 + 36)] / 100
                        emit Burn((10 * cd[((32 * idx) + arg2 + 36)] / 100));
                    else:
                        require totalFrozen
                        stor4 += Mask(192, 1, 10 * cd[((32 * idx) + arg2 + 36)] / 100) << 63 / totalFrozen
                        emit 0xfeddf252: (10 * cd[((32 * idx) + arg2 + 36)] / 100 / 2), msg.sender, this.address
                        totalSupply -= 10 * cd[((32 * idx) + arg2 + 36)] / 100 / 2
                        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                        emit 0xfeddf252: (10 * cd[((32 * idx) + arg2 + 36)] / 100 / 2), msg.sender, 0
                        mem[96] = 10 * cd[((32 * idx) + arg2 + 36)] / 100 / 2
                        emit Burn((10 * cd[((32 * idx) + arg2 + 36)] / 100 / 2));
        idx = idx + 1
        continue 
}



}
