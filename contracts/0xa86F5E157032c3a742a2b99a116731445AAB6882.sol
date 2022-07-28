contract main {




// =====================  Runtime code  =====================


#
#  - sendDust(address arg1, address arg2, uint256 arg3)
#  - sub_8033d687(?)
#
const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address governorAddress;
address pendingGovernorAddress;
address tradeFactoryAddress;
mapping of uint256 offers;

function governor() payable {
    return governorAddress
}

function offers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return offers[arg1]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function tradeFactory() payable {
    return tradeFactoryAddress
}

function _fallback() payable {
    revert
}

function isGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (governorAddress == arg1)
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'governable/only-pending-governor'
    governorAddress = pendingGovernorAddress
    pendingGovernorAddress = 0
    emit GovernorAccepted()
}

function setTradeFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if not arg1:
        revert with 3643679549
    tradeFactoryAddress = arg1
    emit TradeFactorySet(arg1);
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'governable/pending-governor-should-not-be-zero-addres'
    pendingGovernorAddress = arg1
    emit PendingGovernorSet(arg1);
}

function create(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'governable/only-governor'
    if not arg1:
        revert with 3643679549
    if not arg2:
        revert with 522854405
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args governorAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < offers[address(arg1)]:
        revert with 3935194805
    if offers[address(arg1)] > !arg2:
        revert with 0, 17
    offers[address(arg1)] += arg2
    emit 0x88a4cca4: arg2, arg1
}



}
