contract main {




// =====================  Runtime code  =====================


const MAX_FEE = 1000

const FEE_DENOMINATOR = 10000


uint256 buyFee;
uint256 supplyCap;
uint256 supply;
address synthAddress;
address reserveAddress;
address operatorAddress;
address stratAddress;
address governanceAddress;

function supply() payable {
    return supply
}

function strat() payable {
    return stratAddress
}

function synth() payable {
    return synthAddress
}

function buyFee() payable {
    return buyFee
}

function operator() payable {
    return operatorAddress
}

function governance() payable {
    return governanceAddress
}

function supplyCap() payable {
    return supplyCap
}

function reserve() payable {
    return reserveAddress
}

function _fallback() payable {
    revert
}

function setCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'ONLY OPERATOR OR GOV'
    supplyCap = arg1
}

function setBuyFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'ONLY GOV'
    if arg1 > 1000:
        revert with 0, 'amount too high'
    buyFee = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'ONLY GOV'
    if not arg1:
        revert with 0, 'NO ADDRESS ZERO'
    governanceAddress = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        if operatorAddress != msg.sender:
            revert with 0, 'ONLY GOV OR OPERATOR'
    if not arg1:
        revert with 0, 'NO ADDRESS ZERO'
    operatorAddress = arg1
}

function takeProfit() payable {
    require ext_code.size(reserveAddress)
    staticcall reserveAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > supply:
        if ext_call.return_data[0] < supply:
            revert with 0, 17
        require ext_code.size(reserveAddress)
        call reserveAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args governanceAddress, ext_call.return_data[0] - supply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if supply > !arg1:
        revert with 0, 17
    if supply + arg1 < supply:
        revert with 0, 'SafeMath: addition overflow'
    if supply + arg1 > supplyCap:
        revert with 0, 'supply exceeded cap'
    require ext_code.size(reserveAddress)
    call reserveAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not buyFee:
        emit Buy(arg1, arg1, msg.sender);
    else:
        if not arg1:
            require ext_code.size(reserveAddress)
            call reserveAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, governanceAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 > -1:
                revert with 0, 17
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit Buy(arg1, arg1, msg.sender);
        else:
            if arg1 and buyFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * buyFee / arg1 != buyFee:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(reserveAddress)
            call reserveAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, governanceAddress, arg1 * buyFee / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 > !(arg1 * buyFee / 10000):
                revert with 0, 17
            if arg1 + (arg1 * buyFee / 10000) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            emit Buy(arg1, arg1 + (arg1 * buyFee / 10000), msg.sender);
    require ext_code.size(synthAddress)
    call synthAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if supply > !arg1:
        revert with 0, 17
    if supply + arg1 < supply:
        revert with 0, 'SafeMath: addition overflow'
    supply += arg1
}

function sell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(synthAddress)
    call synthAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(synthAddress)
    call synthAddress.burn(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if buyFee <= 0:
        require ext_code.size(reserveAddress)
        call reserveAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg1 > supply:
            revert with 0, 'SafeMath: subtraction underflow', 0
        if supply < arg1:
            revert with 0, 17
        supply -= arg1
        emit Sell(arg1, arg1, msg.sender);
    else:
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if arg1 < 0:
                revert with 0, 17
            require ext_code.size(reserveAddress)
            call reserveAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args governanceAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(reserveAddress)
            call reserveAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 > supply:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if supply < arg1:
                revert with 0, 17
            supply -= arg1
            emit Sell(arg1, arg1, msg.sender);
        else:
            if arg1 and buyFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * buyFee / arg1 != buyFee:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * buyFee / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if arg1 < arg1 * buyFee / 10000:
                revert with 0, 17
            require ext_code.size(reserveAddress)
            call reserveAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args governanceAddress, arg1 * buyFee / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(reserveAddress)
            call reserveAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 - (arg1 * buyFee / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if arg1 > supply:
                revert with 0, 'SafeMath: subtraction underflow', 0
            if supply < arg1:
                revert with 0, 17
            supply -= arg1
            emit Sell(arg1, arg1 - (arg1 * buyFee / 10000), msg.sender);
}



}
