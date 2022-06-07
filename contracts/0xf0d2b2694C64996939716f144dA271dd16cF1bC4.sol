contract main {




// =====================  Runtime code  =====================


address adminAddress;
mapping of address oracles;

function oracles(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return oracles[arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, 'Oracle: !admin'
    oracles[address(arg1)] = arg2
}

function sub_c4e4109e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not oracles[address(arg1)]:
        return 0
    require ext_code.size(oracles[address(arg1)])
    staticcall oracles[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}



}
