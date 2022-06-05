contract main {




// =====================  Runtime code  =====================


uint256 sub_4a5d0943;
uint256 sub_7d969932;
mapping of struct sub_c9354337;
address governanceAddress;
address managementAddress;
mapping of address sub_27fff0db;
mapping of uint8 stor6;

function sub_27fff0db(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_27fff0db[arg1]
}

function sub_458add98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_4a5d0943(?) payable {
    return sub_4a5d0943
}

function governance() payable {
    return governanceAddress
}

function sub_7d969932(?) payable {
    return sub_7d969932
}

function management() payable {
    return managementAddress
}

function sub_c9354337(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c9354337[arg1].field_0, sub_c9354337[arg1].field_256, bool(sub_c9354337[arg1].field_512)
}

function _fallback() payable {
    revert
}

function sub_6e905e17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return not bool(stor6[address(arg1)])
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!authorized'
    require arg1
    governanceAddress = arg1
}

function setManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, '!authorized'
    require arg1
    managementAddress = arg1
}

function setlossLimitRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if managementAddress != msg.sender:
            revert with 0, '!authorized'
    require arg1 < 10000
    sub_7d969932 = arg1
}

function setProfitLimitRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if managementAddress != msg.sender:
            revert with 0, '!authorized'
    require arg1 < 10000
    sub_4a5d0943 = arg1
}

function setCheck(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if governanceAddress != msg.sender:
        if managementAddress != msg.sender:
            revert with 0, '!authorized'
    sub_27fff0db[address(arg1)] = arg2
}

function sub_9abf315b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if governanceAddress != msg.sender:
        if managementAddress != msg.sender:
            revert with 0, '!authorized'
    stor6[address(arg1)] = uint8(bool(arg2))
}

function setStrategyLimits(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if governanceAddress != msg.sender:
        if managementAddress != msg.sender:
            revert with 0, '!authorized'
    require arg3 < 10000
    require arg2 < 10000
    sub_c9354337[address(arg1)].field_0 = arg2
    sub_c9354337[address(arg1)].field_256 = arg3
    sub_c9354337[address(arg1)].field_512 = 1
}

function sub_039aa250(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    stor6[address(arg1)] = 0
}

function sub_06bfaf04(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require address(arg1)
    if not sub_27fff0db[address(arg1)]:
        if not sub_c9354337[address(arg1)].field_512:
            if arg2 <= arg6 * sub_4a5d0943 / 10000:
                if arg3 <= arg6 * sub_7d969932 / 10000:
                    return 1
        else:
            if arg2 <= arg6 * sub_c9354337[address(arg1)].field_0 / 10000:
                if arg3 <= arg6 * sub_c9354337[address(arg1)].field_256 / 10000:
                    return 1
        return 0
    require ext_code.size(sub_27fff0db[address(arg1)])
    staticcall sub_27fff0db[address(arg1)].0x45901be0 with:
            gas gas_remaining wei
           args 0, 0, arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function check(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not sub_27fff0db[address(msg.sender)]:
        if not sub_c9354337[address(msg.sender)].field_512:
            if arg1 <= arg5 * sub_4a5d0943 / 10000:
                if arg2 <= arg5 * sub_7d969932 / 10000:
                    return 1
        else:
            if arg1 <= arg5 * sub_c9354337[address(msg.sender)].field_0 / 10000:
                if arg2 <= arg5 * sub_c9354337[address(msg.sender)].field_256 / 10000:
                    return 1
        return 0
    require ext_code.size(sub_27fff0db[address(msg.sender)])
    staticcall sub_27fff0db[address(msg.sender)].0x45901be0 with:
            gas gas_remaining wei
           args 0, uint32(msg.sender), arg1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}



}
