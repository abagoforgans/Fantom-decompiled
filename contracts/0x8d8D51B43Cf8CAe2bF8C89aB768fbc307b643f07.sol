contract main {




// =====================  Runtime code  =====================


mapping of struct sub_d46a335a;
mapping of uint8 stor1;
address stor2;
address sub_e30b1a30Address;
uint256 allocatedTokens;
uint256 claimedTokens;
uint256 liquidityLaunch;
uint256 sub_3a2ef9df;
uint8 released;

function allocatedTokens() payable {
    return allocatedTokens
}

function claimedTokens() payable {
    return claimedTokens
}

function sub_3a2ef9df(?) payable {
    return sub_3a2ef9df
}

function released() payable {
    return bool(released)
}

function liquidityLaunch() payable {
    return liquidityLaunch
}

function sub_d46a335a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d46a335a[address(arg1)].field_0, 
           sub_d46a335a[address(arg1)].field_256,
           sub_d46a335a[address(arg1)].field_512,
           sub_d46a335a[address(arg1)].field_768,
           sub_d46a335a[address(arg1)].field_1024
}

function sub_e30b1a30(?) payable {
    return sub_e30b1a30Address
}

function sub_fcf7b193(?) payable {
    return bool(stor1[address(msg.sender)])
}

function _fallback() payable {
    revert
}

function amIAdmin() payable {
    return (msg.sender == stor2)
}

function sub_6964c282(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only admin can do this'
    sub_3a2ef9df = arg1
}

function sub_3fcf2e26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only admin can do this'
    liquidityLaunch = arg1
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only admin can do this'
    stor2 = arg1
}

function sub_a8cfd947(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only admin can do this'
    sub_e30b1a30Address = address(arg1)
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only admin can do this'
    if bool(stor1[address(arg1)]) != 1:
        stor1[address(arg1)] = 1
}

function deAuthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only admin can do this'
    if bool(stor1[address(arg1)]) == 1:
        stor1[address(arg1)] = 0
}

function removeInvestor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only authorized can do this'
    sub_d46a335a[address(arg1)].field_0 = 0
    sub_d46a335a[address(arg1)].field_256 = 0
}

function release() payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only admin can do this'
    if released:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOTotalPresale: tokens have already been released'
    released = 1
}

function getContractBalance() payable {
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_ee5b949a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only authorized can do this'
    if arg2 != sub_d46a335a[address(arg1)].field_512:
        sub_d46a335a[address(arg1)].field_512 = arg2
    if arg3 != sub_d46a335a[address(arg1)].field_768:
        sub_d46a335a[address(arg1)].field_768 = arg3
    if arg4 != sub_d46a335a[address(arg1)].field_1024:
        sub_d46a335a[address(arg1)].field_1024 = arg4
}

function sub_9490f063(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only authorized can do this'
    if sub_d46a335a[address(arg1)].field_0 < arg2:
        revert with 'NH{q', 17
    if sub_d46a335a[address(arg1)].field_0 - arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOTotalPresale: Subtraction value exceeds balance'
    if allocatedTokens < arg2:
        revert with 'NH{q', 17
    allocatedTokens -= arg2
    if sub_d46a335a[address(arg1)].field_0 < arg2:
        revert with 'NH{q', 17
    sub_d46a335a[address(arg1)].field_0 -= arg2
}

function sub_87da2075(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only authorized can do this'
    if sub_d46a335a[address(arg1)].field_256 < arg2:
        revert with 'NH{q', 17
    if sub_d46a335a[address(arg1)].field_256 - arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOTotalPresale: Subtraction value exceeds balance'
    if allocatedTokens < arg2:
        revert with 'NH{q', 17
    allocatedTokens -= arg2
    if sub_d46a335a[address(arg1)].field_256 < arg2:
        revert with 'NH{q', 17
    sub_d46a335a[address(arg1)].field_256 -= arg2
}

function sub_4711ffe9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only authorized can do this'
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if allocatedTokens > -arg2 - 1:
        revert with 'NH{q', 17
    if allocatedTokens + arg2 > ext_call.return_data[0]:
        revert with 0, 'FTMOTotalPresale: Not enough tokens left in contract'
    if allocatedTokens > -arg2 - 1:
        revert with 'NH{q', 17
    allocatedTokens += arg2
    if sub_d46a335a[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_d46a335a[address(arg1)].field_0 += arg2
}

function sub_688dc74f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only authorized can do this'
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if allocatedTokens > -arg2 - 1:
        revert with 'NH{q', 17
    if allocatedTokens + arg2 > ext_call.return_data[0]:
        revert with 0, 'FTMOTotalPresale: Not enough tokens left in contract'
    if allocatedTokens > -arg2 - 1:
        revert with 'NH{q', 17
    allocatedTokens += arg2
    if sub_d46a335a[address(arg1)].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_d46a335a[address(arg1)].field_256 += arg2
}

function sub_daf5ac34(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only authorized can do this'
    if arg2 != sub_d46a335a[address(arg1)].field_0:
        if arg2 > sub_d46a335a[address(arg1)].field_0:
            if arg2 < sub_d46a335a[address(arg1)].field_0:
                revert with 'NH{q', 17
            if allocatedTokens > -arg2 + sub_d46a335a[address(arg1)].field_0 - 1:
                revert with 'NH{q', 17
            allocatedTokens = allocatedTokens + arg2 - sub_d46a335a[address(arg1)].field_0
        else:
            if arg2 < sub_d46a335a[address(arg1)].field_0:
                if sub_d46a335a[address(arg1)].field_0 < arg2:
                    revert with 'NH{q', 17
                if allocatedTokens < sub_d46a335a[address(arg1)].field_0 - arg2:
                    revert with 'NH{q', 17
                allocatedTokens = allocatedTokens - sub_d46a335a[address(arg1)].field_0 + arg2
        require ext_code.size(sub_e30b1a30Address)
        staticcall sub_e30b1a30Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if allocatedTokens < claimedTokens:
            revert with 'NH{q', 17
        if allocatedTokens - claimedTokens > ext_call.return_data[0]:
            revert with 0, 'FTMOTotalPresale: Not enough tokens left in contract'
        sub_d46a335a[address(arg1)].field_0 = arg2
    if arg3 != sub_d46a335a[address(arg1)].field_256:
        if arg3 > sub_d46a335a[address(arg1)].field_256:
            if arg3 < sub_d46a335a[address(arg1)].field_256:
                revert with 'NH{q', 17
            if allocatedTokens > -arg3 + sub_d46a335a[address(arg1)].field_256 - 1:
                revert with 'NH{q', 17
            allocatedTokens = allocatedTokens + arg3 - sub_d46a335a[address(arg1)].field_256
        else:
            if arg3 < sub_d46a335a[address(arg1)].field_256:
                if sub_d46a335a[address(arg1)].field_256 < arg3:
                    revert with 'NH{q', 17
                if allocatedTokens < sub_d46a335a[address(arg1)].field_256 - arg3:
                    revert with 'NH{q', 17
                allocatedTokens = allocatedTokens - sub_d46a335a[address(arg1)].field_256 + arg3
        require ext_code.size(sub_e30b1a30Address)
        staticcall sub_e30b1a30Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if allocatedTokens < claimedTokens:
            revert with 'NH{q', 17
        if allocatedTokens - claimedTokens > ext_call.return_data[0]:
            revert with 0, 'FTMOTotalPresale: Not enough tokens left in contract'
        sub_d46a335a[address(arg1)].field_256 = arg3
    if arg4 != sub_d46a335a[address(arg1)].field_512:
        if arg4 > sub_d46a335a[address(arg1)].field_512:
            if arg4 < sub_d46a335a[address(arg1)].field_512:
                revert with 'NH{q', 17
            if claimedTokens > -arg4 + sub_d46a335a[address(arg1)].field_512 - 1:
                revert with 'NH{q', 17
            claimedTokens = claimedTokens + arg4 - sub_d46a335a[address(arg1)].field_512
        else:
            if arg4 < sub_d46a335a[address(arg1)].field_512:
                if sub_d46a335a[address(arg1)].field_512 < arg4:
                    revert with 'NH{q', 17
                if claimedTokens < sub_d46a335a[address(arg1)].field_512 - arg4:
                    revert with 'NH{q', 17
                claimedTokens = claimedTokens - sub_d46a335a[address(arg1)].field_512 + arg4
        require ext_code.size(sub_e30b1a30Address)
        staticcall sub_e30b1a30Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if allocatedTokens < claimedTokens:
            revert with 'NH{q', 17
        if allocatedTokens - claimedTokens > ext_call.return_data[0]:
            revert with 0, 'FTMOTotalPresale: Not enough tokens left in contract'
        sub_d46a335a[address(arg1)].field_512 = arg4
    if arg5 != sub_d46a335a[address(arg1)].field_768:
        sub_d46a335a[address(arg1)].field_768 = arg5
    if arg6 != sub_d46a335a[address(arg1)].field_1024:
        sub_d46a335a[address(arg1)].field_1024 = arg6
}

function sub_c5a69ac3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_d46a335a[address(arg1)].field_0:
        if not sub_d46a335a[address(arg1)].field_256:
            return 0
    if sub_d46a335a[address(arg1)].field_0 and sub_d46a335a[address(arg1)].field_768 > -1 / sub_d46a335a[address(arg1)].field_0:
        revert with 'NH{q', 17
    if sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100 > -sub_d46a335a[address(arg1)].field_256 - 1:
        revert with 'NH{q', 17
    if sub_d46a335a[address(arg1)].field_0 > -sub_d46a335a[address(arg1)].field_256 - 1:
        revert with 'NH{q', 17
    if sub_d46a335a[address(arg1)].field_0 < sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= 0:
        return 0
    if sub_3a2ef9df and 24 > -1 / sub_3a2ef9df:
        revert with 'NH{q', 17
    if 24 * sub_3a2ef9df and 3600 > -1 / 24 * sub_3a2ef9df:
        revert with 'NH{q', 17
    if 24 * 3600 * sub_3a2ef9df > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= (24 * 3600 * sub_3a2ef9df) + liquidityLaunch:
        if (sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + sub_d46a335a[address(arg1)].field_256 < sub_d46a335a[address(arg1)].field_512:
            revert with 'NH{q', 17
        return ((sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + sub_d46a335a[address(arg1)].field_256 - sub_d46a335a[address(arg1)].field_512)
    if block.timestamp < (24 * 3600 * sub_3a2ef9df) + liquidityLaunch:
        revert with 'NH{q', 17
    if sub_d46a335a[address(arg1)].field_1024 and 24 > -1 / sub_d46a335a[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if 24 * sub_d46a335a[address(arg1)].field_1024 and 3600 > -1 / 24 * sub_d46a335a[address(arg1)].field_1024:
        revert with 'NH{q', 17
    if block.timestamp - (24 * 3600 * sub_3a2ef9df) - liquidityLaunch > 24 * 3600 * sub_d46a335a[address(arg1)].field_1024:
        if sub_d46a335a[address(arg1)].field_0 > -sub_d46a335a[address(arg1)].field_256 - 1:
            revert with 'NH{q', 17
        if sub_d46a335a[address(arg1)].field_0 + sub_d46a335a[address(arg1)].field_256 < sub_d46a335a[address(arg1)].field_512:
            revert with 'NH{q', 17
        return (sub_d46a335a[address(arg1)].field_0 + sub_d46a335a[address(arg1)].field_256 - sub_d46a335a[address(arg1)].field_512)
    if sub_d46a335a[address(arg1)].field_0 - (sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) and block.timestamp - (24 * 3600 * sub_3a2ef9df) - liquidityLaunch > -1 / sub_d46a335a[address(arg1)].field_0 - (sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100):
        revert with 'NH{q', 17
    if not 24 * 3600 * sub_d46a335a[address(arg1)].field_1024:
        revert with 'NH{q', 18
    if (sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + sub_d46a335a[address(arg1)].field_256 > -((block.timestamp * sub_d46a335a[address(arg1)].field_0) - (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(arg1)].field_0) - (liquidityLaunch * sub_d46a335a[address(arg1)].field_0) - (block.timestamp * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + (liquidityLaunch * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) / 24 * 3600 * sub_d46a335a[address(arg1)].field_1024) - 1:
        revert with 'NH{q', 17
    if (sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + sub_d46a335a[address(arg1)].field_256 + ((block.timestamp * sub_d46a335a[address(arg1)].field_0) - (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(arg1)].field_0) - (liquidityLaunch * sub_d46a335a[address(arg1)].field_0) - (block.timestamp * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + (liquidityLaunch * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) / 24 * 3600 * sub_d46a335a[address(arg1)].field_1024) < sub_d46a335a[address(arg1)].field_512:
        revert with 'NH{q', 17
    return ((sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + sub_d46a335a[address(arg1)].field_256 + ((block.timestamp * sub_d46a335a[address(arg1)].field_0) - (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(arg1)].field_0) - (liquidityLaunch * sub_d46a335a[address(arg1)].field_0) - (block.timestamp * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) + (liquidityLaunch * sub_d46a335a[address(arg1)].field_0 * sub_d46a335a[address(arg1)].field_768 / 100) / 24 * 3600 * sub_d46a335a[address(arg1)].field_1024) - sub_d46a335a[address(arg1)].field_512)
}

function sub_5f71fcc3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d46a335a[address(msg.sender)].field_0 <= 0:
        if sub_d46a335a[address(msg.sender)].field_256 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: only investors allowed'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: tokens are not yet released'
    if not sub_d46a335a[address(msg.sender)].field_0:
        if not sub_d46a335a[address(msg.sender)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: no FTMO available'
    if sub_d46a335a[address(msg.sender)].field_0 and sub_d46a335a[address(msg.sender)].field_768 > -1 / sub_d46a335a[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100 > -sub_d46a335a[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    if sub_d46a335a[address(msg.sender)].field_0 > -sub_d46a335a[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    if sub_d46a335a[address(msg.sender)].field_0 < sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: no FTMO available'
    if sub_3a2ef9df and 24 > -1 / sub_3a2ef9df:
        revert with 'NH{q', 17
    if 24 * sub_3a2ef9df and 3600 > -1 / 24 * sub_3a2ef9df:
        revert with 'NH{q', 17
    if 24 * 3600 * sub_3a2ef9df > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= (24 * 3600 * sub_3a2ef9df) + liquidityLaunch:
        if (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + sub_d46a335a[address(msg.sender)].field_256 < sub_d46a335a[address(msg.sender)].field_512:
            revert with 'NH{q', 17
        if (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + sub_d46a335a[address(msg.sender)].field_256 - sub_d46a335a[address(msg.sender)].field_512 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: no FTMO available'
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: amount incorrect'
        if arg1 > (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + sub_d46a335a[address(msg.sender)].field_256 - sub_d46a335a[address(msg.sender)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: amount incorrect'
    else:
        if block.timestamp < (24 * 3600 * sub_3a2ef9df) + liquidityLaunch:
            revert with 'NH{q', 17
        if sub_d46a335a[address(msg.sender)].field_1024 and 24 > -1 / sub_d46a335a[address(msg.sender)].field_1024:
            revert with 'NH{q', 17
        if 24 * sub_d46a335a[address(msg.sender)].field_1024 and 3600 > -1 / 24 * sub_d46a335a[address(msg.sender)].field_1024:
            revert with 'NH{q', 17
        if block.timestamp - (24 * 3600 * sub_3a2ef9df) - liquidityLaunch > 24 * 3600 * sub_d46a335a[address(msg.sender)].field_1024:
            if sub_d46a335a[address(msg.sender)].field_0 > -sub_d46a335a[address(msg.sender)].field_256 - 1:
                revert with 'NH{q', 17
            if sub_d46a335a[address(msg.sender)].field_0 + sub_d46a335a[address(msg.sender)].field_256 < sub_d46a335a[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if sub_d46a335a[address(msg.sender)].field_0 + sub_d46a335a[address(msg.sender)].field_256 - sub_d46a335a[address(msg.sender)].field_512 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: no FTMO available'
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: amount incorrect'
            if arg1 > sub_d46a335a[address(msg.sender)].field_0 + sub_d46a335a[address(msg.sender)].field_256 - sub_d46a335a[address(msg.sender)].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: amount incorrect'
        else:
            if sub_d46a335a[address(msg.sender)].field_0 - (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) and block.timestamp - (24 * 3600 * sub_3a2ef9df) - liquidityLaunch > -1 / sub_d46a335a[address(msg.sender)].field_0 - (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100):
                revert with 'NH{q', 17
            if not 24 * 3600 * sub_d46a335a[address(msg.sender)].field_1024:
                revert with 'NH{q', 18
            if (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + sub_d46a335a[address(msg.sender)].field_256 > -((block.timestamp * sub_d46a335a[address(msg.sender)].field_0) - (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0) - (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0) - (block.timestamp * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) / 24 * 3600 * sub_d46a335a[address(msg.sender)].field_1024) - 1:
                revert with 'NH{q', 17
            if (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + sub_d46a335a[address(msg.sender)].field_256 + ((block.timestamp * sub_d46a335a[address(msg.sender)].field_0) - (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0) - (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0) - (block.timestamp * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) / 24 * 3600 * sub_d46a335a[address(msg.sender)].field_1024) < sub_d46a335a[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + sub_d46a335a[address(msg.sender)].field_256 + ((block.timestamp * sub_d46a335a[address(msg.sender)].field_0) - (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0) - (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0) - (block.timestamp * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) / 24 * 3600 * sub_d46a335a[address(msg.sender)].field_1024) - sub_d46a335a[address(msg.sender)].field_512 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: no FTMO available'
            if arg1 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: amount incorrect'
            if arg1 > (sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + sub_d46a335a[address(msg.sender)].field_256 + ((block.timestamp * sub_d46a335a[address(msg.sender)].field_0) - (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0) - (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0) - (block.timestamp * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (24 * 3600 * sub_3a2ef9df * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) + (liquidityLaunch * sub_d46a335a[address(msg.sender)].field_0 * sub_d46a335a[address(msg.sender)].field_768 / 100) / 24 * 3600 * sub_d46a335a[address(msg.sender)].field_1024) - sub_d46a335a[address(msg.sender)].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOTotalPresale: amount incorrect'
    if sub_d46a335a[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_d46a335a[address(msg.sender)].field_512 += arg1
    if claimedTokens > -arg1 - 1:
        revert with 'NH{q', 17
    claimedTokens += arg1
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
