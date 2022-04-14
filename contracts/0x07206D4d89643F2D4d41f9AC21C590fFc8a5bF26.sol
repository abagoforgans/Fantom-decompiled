contract main {




// =====================  Runtime code  =====================


#
#  - sub_1355749d(?)
#  - sub_420e8dbb(?)
#  - sub_59c0b3f1(?)
#  - sub_6f5d545f(?)
#  - valueOfAsset(address arg1, uint256 arg2)
#  - tvlOfPool(uint256 arg1)
#
address stor0;
address wethAddress;
array of uint256 base;
uint256 stor3;
address masterAddress;
address rewardAddress;
address refAddress;
mapping of address sub_8b16cf98;

function ref() payable {
    return refAddress
}

function reward() payable {
    return rewardAddress
}

function weth() payable {
    return wethAddress
}

function base() payable {
    return base[0 len base.length].field_0
}

function sub_8b16cf98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8b16cf98[arg1]
}

function master() payable {
    return masterAddress
}

function _fallback() payable {
    revert
}

function setPairAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8b16cf98[address(arg1)] = arg2
}

function ethPriceInUSD() payable {
    if not bool(base.length):
        require ext_code.size(refAddress)
        staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                gas gas_remaining wei
               args 64, 128, base.length % 128, Mask(248, 8, base.length), 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    else:
        if bool(base.length) != 1:
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args mem[196 len -132]
        else:
            idx = 0
            s = 0
            while idx < base.length.field_1:
                mem[idx + 292] = base[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(base.length.field_1) + 292] = 3
            require ext_code.size(refAddress)
            staticcall refAddress.getReferenceData(string rg1, string rg2) with:
                    gas gas_remaining wei
                   args 64, ceil32(base.length.field_1) + 96, 2 * Mask(256, -1, base.length.field_1), mem[292 len ceil32(base.length.field_1) + 32], 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    return ext_call.return_data[0]
}

function sub_775c6007(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x8dbb1e3a with:
            gas gas_remaining wei
           args block.number - 1, block.number
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterAddress)
    staticcall masterAddress.0x42fd9457 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (0 / ext_call.return_data[0])
        else:
            if stor3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != stor3:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor3 * ext_call.return_data[0] * ext_call.return_data[0]:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (0 / ext_call.return_data[0])
            else:
                if ext_call.return_data[32] * stor3 * ext_call.return_data[0] * ext_call.return_data[0] / stor3 * ext_call.return_data[0] * ext_call.return_data[0] != ext_call.return_data[32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    return (ext_call.return_data[32] * stor3 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}



}
