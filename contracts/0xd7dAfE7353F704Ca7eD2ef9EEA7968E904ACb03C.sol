contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''

const sub_c735f63a(?) = 18446744073709551616

const FACTORY = 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3

const INITIAL_SUPPLY = 20000 * 10^18

const ROUTER = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const BURN_RATE = 2

const MIN_FREEZE_AMOUNT = 10^18


uint256 totalSupply;
uint256 totalFrozen;
mapping of struct frozenOf;
uint256 stor3;
address stor4;
address sushiLPAddress;

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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return frozenOf[address(arg1)][3][address(arg2)].field_0
}

function sushiLP() payable {
    return sushiLPAddress
}

function _fallback() payable {
    revert
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'owner'
    stor4 = arg1
}

function sub_6c834204(?) payable {
    require calldata.size - 4 >= 32
    return (frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512)
}

function blacklist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor4
    frozenOf[address(arg1)].field_8 = Mask(248, 0, arg2)
}

function dividendsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024) >> 64)
}

function whitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor4
    frozenOf[address(arg1)].field_0 = uint8(arg2)
    emit Whitelist(arg2, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    frozenOf[msg.sender][3][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_68aa4a4c(?) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0, 'owner'
    if sushiLPAddress:
        revert with 0, 'LP set'
    sushiLPAddress = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512 + (Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024) >> 64))
}

function allInfoFor(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalSupply, 
           totalFrozen,
           frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512 + (Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024) >> 64),
           frozenOf[address(arg1)].field_512,
           Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024) >> 64
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require frozenOf[address(msg.sender)].field_512 >= arg1
    totalFrozen -= arg1
    require ext_code.size(sushiLPAddress)
    call sushiLPAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    frozenOf[msg.sender].field_512 -= arg1
    frozenOf[msg.sender].field_1024 += -1 * arg1 * stor3
    emit Unstake(arg1, msg.sender);
}

function yield() payable {
    frozenOf[address(msg.sender)].field_1024 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024)
    frozenOf[address(msg.sender)].field_256 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64
    emit 0xfeddf252: (Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64), this.address, msg.sender
    emit Yield((Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64), msg.sender);
    return 0
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sushiLPAddress)
    staticcall sushiLPAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require frozenOf[address(msg.sender)].field_512 + arg1 >= 10^18
    require ext_code.size(sushiLPAddress)
    call sushiLPAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalFrozen += arg1
    frozenOf[msg.sender].field_512 += arg1
    frozenOf[msg.sender].field_1024 += arg1 * stor3
    emit 0xfeddf252: arg1, msg.sender, this.address
    emit Stake(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= arg2
    require not frozenOf[address(msg.sender)].field_8
    frozenOf[address(msg.sender)].field_1024 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024)
    frozenOf[address(msg.sender)].field_256 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64
    emit 0xfeddf252: (Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64), this.address, msg.sender
    emit Yield((Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64), msg.sender);
    frozenOf[address(msg.sender)].field_256 -= arg2
    if frozenOf[address(msg.sender)].field_0:
        frozenOf[address(arg1)].field_256 += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
    else:
        frozenOf[address(arg1)].field_256 = arg2 - (2 * arg2 / 100) + frozenOf[address(arg1)].field_256
        emit 0xfeddf252: (arg2 - (2 * arg2 / 100)), msg.sender, arg1
        if 2 * arg2 / 100:
            if totalFrozen:
                require totalFrozen
                stor3 += 2 * arg2 / 100 << 64 / totalFrozen
                emit 0xfeddf252: (2 * arg2 / 100), msg.sender, this.address
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= frozenOf[address(arg1)][3][msg.sender].field_0
    frozenOf[address(arg1)][3][msg.sender].field_0 -= arg3
    require frozenOf[address(arg1)].field_256 - frozenOf[address(arg1)].field_512 >= arg3
    require not frozenOf[address(arg1)].field_8
    frozenOf[address(arg1)].field_1024 += Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024)
    frozenOf[address(arg1)].field_256 += Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024) >> 64
    emit 0xfeddf252: (Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024) >> 64), this.address, arg1
    emit Yield((Mask(192, 64, (frozenOf[address(arg1)].field_512 * stor3) - frozenOf[address(arg1)].field_1024) >> 64), arg1);
    frozenOf[address(arg1)].field_256 -= arg3
    if frozenOf[address(arg1)].field_0:
        frozenOf[address(arg2)].field_256 += arg3
        emit 0xfeddf252: arg3, arg1, arg2
    else:
        frozenOf[address(arg2)].field_256 = arg3 - (2 * arg3 / 100) + frozenOf[address(arg2)].field_256
        emit 0xfeddf252: (arg3 - (2 * arg3 / 100)), arg1, arg2
        if 2 * arg3 / 100:
            if totalFrozen:
                require totalFrozen
                stor3 += 2 * arg3 / 100 << 64 / totalFrozen
                emit 0xfeddf252: (2 * arg3 / 100), arg1, this.address
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
        require frozenOf[address(msg.sender)].field_256 - frozenOf[address(msg.sender)].field_512 >= cd[((32 * idx) + arg2 + 36)]
        require not frozenOf[address(msg.sender)].field_8
        frozenOf[address(msg.sender)].field_1024 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024)
        frozenOf[address(msg.sender)].field_256 += Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64
        emit 0xfeddf252: (Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64), this.address, msg.sender
        emit Yield((Mask(192, 64, (frozenOf[address(msg.sender)].field_512 * stor3) - frozenOf[address(msg.sender)].field_1024) >> 64), msg.sender);
        frozenOf[address(msg.sender)].field_256 -= cd[((32 * idx) + arg2 + 36)]
        mem[32] = 2
        if frozenOf[address(msg.sender)].field_0:
            frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 += cd[((32 * idx) + arg2 + 36)]
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            emit 0xfeddf252: cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)])
        else:
            frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256 = cd[((32 * idx) + arg2 + 36)] - (2 * cd[((32 * idx) + arg2 + 36)] / 100) + frozenOf[address(cd[((32 * idx) + arg1 + 36)])].field_256
            mem[96] = cd[((32 * idx) + arg2 + 36)] - (2 * cd[((32 * idx) + arg2 + 36)] / 100)
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            emit 0xfeddf252: (cd[((32 * idx) + arg2 + 36)] - (2 * cd[((32 * idx) + arg2 + 36)] / 100)), msg.sender, address(cd[((32 * idx) + arg1 + 36)])
            if 2 * cd[((32 * idx) + arg2 + 36)] / 100:
                if totalFrozen:
                    require totalFrozen
                    stor3 += 2 * cd[((32 * idx) + arg2 + 36)] / 100 << 64 / totalFrozen
                    mem[96] = 2 * cd[((32 * idx) + arg2 + 36)] / 100
                    mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                    emit 0xfeddf252: (2 * cd[((32 * idx) + arg2 + 36)] / 100), msg.sender, this.address
        idx = idx + 1
        continue 
}



}
