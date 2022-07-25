contract main {




// =====================  Runtime code  =====================


const TOKEN_HARDCAP = 15 * 10^13


uint256 stor0;
mapping of uint256 sub_08d09957;
mapping of uint256 tokenBoughtTotal;
mapping of uint256 sub_bf35b157;
address stor4;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address stor5;
uint256 sub_004d4d2c;
uint256 totalTokenSold;
uint256 sub_4b94f120;
address stor9;

function sub_004d4d2c(?) payable {
    return sub_004d4d2c
}

function sub_08d09957(?) payable {
    require calldata.size - 4 >= 32
    return sub_08d09957[arg1]
}

function sub_4b94f120(?) payable {
    return sub_4b94f120
}

function isSaleActive() payable {
    return bool(uint8(stor5.field_160))
}

function isClaimActive() payable {
    return bool(uint8(stor5.field_168))
}

function tokenBoughtTotal(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenBoughtTotal[arg1]
}

function totalTokenSold() payable {
    return totalTokenSold
}

function sub_bf35b157(?) payable {
    require calldata.size - 4 >= 32
    return sub_bf35b157[arg1]
}

function _fallback() payable {
    revert
}

function setSaleActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
}

function setClaimActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    Mask(88, 0, stor5.field_168) = Mask(88, 0, arg1)
    if arg1:
        sub_4b94f120 = block.timestamp
}

function emergencyWithdraw() payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a769c2ff(?) payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - totalTokenSold
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawFunds() payable {
    if stor9 != msg.sender:
        revert with 0, 'You're not the owner'
    require ext_code.size(address(stor5.field_0))
    staticcall address(stor5.field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor5.field_0))
    call address(stor5.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buy(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor5.field_160):
        revert with 0, 'Presale has not started'
    if block.timestamp < sub_004d4d2c:
        revert with 0, 'Presale has not started'
    if not arg1 / 15:
        if totalTokenSold > 15 * 10^13:
            revert with 0, 'Token presale hardcap reached'
        require ext_code.size(address(stor5.field_0))
        call address(stor5.field_0).0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_08d09957[address(arg2)] < sub_08d09957[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if tokenBoughtTotal[address(arg2)] < tokenBoughtTotal[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        if totalTokenSold < totalTokenSold:
            revert with 0, 'SafeMath: addition overflow'
        emit TokenBuy(address(arg2), 0);
    else:
        if 1000 * arg1 / 15 / arg1 / 15 != 1000:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalTokenSold + (1000 * arg1 / 15 / 10^9) > 15 * 10^13:
            revert with 0, 'Token presale hardcap reached'
        require ext_code.size(address(stor5.field_0))
        call address(stor5.field_0).0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (1000 * arg1 / 15 / 10^9) + sub_08d09957[address(arg2)] < sub_08d09957[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_08d09957[address(arg2)] += 1000 * arg1 / 15 / 10^9
        if (1000 * arg1 / 15 / 10^9) + tokenBoughtTotal[address(arg2)] < tokenBoughtTotal[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        tokenBoughtTotal[address(arg2)] += 1000 * arg1 / 15 / 10^9
        if (1000 * arg1 / 15 / 10^9) + totalTokenSold < totalTokenSold:
            revert with 0, 'SafeMath: addition overflow'
        totalTokenSold += 1000 * arg1 / 15 / 10^9
        emit TokenBuy(address(arg2), 1000 * arg1 / 15 / 10^9);
    stor0 = 1
}

function claim() payable {
    if not uint8(stor5.field_168):
        revert with 0, 'Claim is not allowed yet'
    if not sub_08d09957[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x77557365722073686f756c64206861766520756e636c61696d656420544f4b454e20746f6b656e,
                    mem[203 len 25]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_08d09957[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe546865726520617265206e6f7420656e6f75676820544f4b454e20746f6b656e7320746f207472616e73666572,
                    mem[210 len 18]
    if sub_4b94f120 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - sub_4b94f120:
        if tokenBoughtTotal[msg.sender]:
            if 0 / tokenBoughtTotal[msg.sender]:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if sub_08d09957[msg.sender] > tokenBoughtTotal[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        if tokenBoughtTotal[msg.sender] - sub_08d09957[msg.sender] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender] > sub_08d09957[msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_08d09957[msg.sender] = tokenBoughtTotal[msg.sender]
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenClaim(msg.sender, -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]);
    else:
        if (100 * block.timestamp) - (100 * sub_4b94f120) / block.timestamp - sub_4b94f120 != 100:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (100 * block.timestamp) - (100 * sub_4b94f120) / 600 <= 10000:
            if not tokenBoughtTotal[msg.sender]:
                if sub_08d09957[msg.sender] > tokenBoughtTotal[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[msg.sender] - sub_08d09957[msg.sender] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender] > sub_08d09957[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[msg.sender] = tokenBoughtTotal[msg.sender]
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]);
            else:
                if (100 * block.timestamp) - (100 * sub_4b94f120) / 600 * tokenBoughtTotal[msg.sender] / tokenBoughtTotal[msg.sender] != (100 * block.timestamp) - (100 * sub_4b94f120) / 600:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_08d09957[msg.sender] > tokenBoughtTotal[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[msg.sender] - sub_08d09957[msg.sender] > (100 * block.timestamp) - (100 * sub_4b94f120) / 600 * tokenBoughtTotal[msg.sender] / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ((100 * block.timestamp) - (100 * sub_4b94f120) / 600 * tokenBoughtTotal[msg.sender] / 10000) - tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender] > sub_08d09957[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[msg.sender] = -((100 * block.timestamp) - (100 * sub_4b94f120) / 600 * tokenBoughtTotal[msg.sender] / 10000) + tokenBoughtTotal[msg.sender]
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((100 * block.timestamp) - (100 * sub_4b94f120) / 600 * tokenBoughtTotal[msg.sender] / 10000) - tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, ((100 * block.timestamp) - (100 * sub_4b94f120) / 600 * tokenBoughtTotal[msg.sender] / 10000) - tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]);
        else:
            if not tokenBoughtTotal[msg.sender]:
                if sub_08d09957[msg.sender] > tokenBoughtTotal[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[msg.sender] - sub_08d09957[msg.sender] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender] > sub_08d09957[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[msg.sender] = tokenBoughtTotal[msg.sender]
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, -tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]);
            else:
                if 10000 * tokenBoughtTotal[msg.sender] / tokenBoughtTotal[msg.sender] != 10000:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if sub_08d09957[msg.sender] > tokenBoughtTotal[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if tokenBoughtTotal[msg.sender] - sub_08d09957[msg.sender] > 10000 * tokenBoughtTotal[msg.sender] / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (10000 * tokenBoughtTotal[msg.sender] / 10000) - tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender] > sub_08d09957[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_08d09957[msg.sender] = -(10000 * tokenBoughtTotal[msg.sender] / 10000) + tokenBoughtTotal[msg.sender]
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (10000 * tokenBoughtTotal[msg.sender] / 10000) - tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenClaim(msg.sender, (10000 * tokenBoughtTotal[msg.sender] / 10000) - tokenBoughtTotal[msg.sender] + sub_08d09957[msg.sender]);
}



}
