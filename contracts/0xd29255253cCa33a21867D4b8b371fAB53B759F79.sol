contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address adminAddress;
address stor3;
uint256 debtRatio;
uint256 gainRatio;
uint256 stor6;
mapping of uint256 sub_d2445730;

function gainRatio() {
    return gainRatio
}

function debtRatio() {
    return debtRatio
}

function sub_d2445730(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d2445730[arg1]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setDebtRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unauthorized Access. Admin role only.'
    debtRatio = arg1
}

function setGainRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unauthorized Access. Admin role only.'
    gainRatio = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unauthorized Access. Admin role only.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect Input! Address cannot be zero.'
    adminAddress = arg1
}

function sub_d099e2ce(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getPaid() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_d2445730[address(msg.sender)]:
        revert with 0, 'Don't have anything for you.'
    sub_d2445730[address(msg.sender)] = 0
    call msg.sender with:
       value sub_d2445730[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function checkCollat(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    return 100 * ext_call.return_data[0] * ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0]
}

function checkCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor3)
    staticcall stor3.0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if not debtRatio:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / debtRatio)
}

function checkLiquidation(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor3)
    staticcall stor3.0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= stor6:
        revert with 0, 'Vault is not below minimum collateral percentage'
}

function checkExtract(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor3)
    staticcall stor3.0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if not debtRatio:
        revert with 'NH{q', 18
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / debtRatio and 11 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / debtRatio:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0])
}

function checkValid(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if not debtRatio:
        revert with 'NH{q', 18
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / debtRatio and 11 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / debtRatio:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / ext_call.return_data[0] - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0] * ext_call.return_data[0]) < ext_call.return_data[0] - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]):
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 100 * 10^6 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 100 * 10^6:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 100 * 10^6 * ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 100 * 10^6:
        revert with 'NH{q', 1
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0] * ext_call.return_data[0]) and 100 > -1 / (ext_call.return_data[0] * ext_call.return_data[0]) - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0] * ext_call.return_data[0]):
        revert with 'NH{q', 17
    if (100 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0] * ext_call.return_data[0]) <= (ext_call.return_data[0] * ext_call.return_data[0]) - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0] * ext_call.return_data[0]):
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 100 * 10^6 * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * ext_call.return_data[0] * ext_call.return_data[0]) - (100 * 11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 100 * 10^6 * ext_call.return_data[0] >= stor6, 
           ext_call.return_data[0] - (11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]),
           ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 100 * 10^6,
           11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]
}

function liquidateVault(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    staticcall stor3.0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(stor3)
    staticcall stor3.0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if not debtRatio:
        revert with 'NH{q', 18
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / debtRatio and 11 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / debtRatio:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] >= stor6:
        revert with 0, 'Vault is not below minimum collateral percentage'
    require ext_code.size(stor3)
    staticcall stor3.0x3c2ecfe5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    staticcall stor3.0xd4a9b2c5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0xd310f49b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0x98c3f2db with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    require ext_code.size(stor3)
    staticcall stor3.0xcd44db1b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 1
    if ext_call.return_data[0] * ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 1
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    if not debtRatio:
        revert with 'NH{q', 18
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0] * ext_call.return_data[0] / 100 * 10^6 / debtRatio
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor3)
    call stor3.0xce77f243 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x85af3c16 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0x767a7b05 with:
         gas gas_remaining wei
        args arg1, 11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0x3e61facd with:
         gas gas_remaining wei
        args arg1, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_d2445730[address(msg.sender)] > -(11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    sub_d2445730[address(msg.sender)] += 11 * ext_call.return_data[0] * ext_call.return_data[0] / debtRatio / 10 / ext_call.return_data[0]
    stor0 = 1
}



}
