contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address adminAddress;
address sub_a577f9a5Address;
address offeringTokenAddress;
uint256 startBlock;
uint256 endBlock;
uint256 raisingAmount;
uint256 offeringAmount;
uint256 totalAmount;
mapping of struct userInfo;
array of address addressList;

function endBlock() {
    return endBlock
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_256)
}

function totalAmount() {
    return totalAmount
}

function startBlock() {
    return startBlock
}

function hasHarvest(address arg1) {
    require calldata.size - 4 >= 32
    return bool(userInfo[address(arg1)].field_256)
}

function raisingAmount() {
    return raisingAmount
}

function sub_a577f9a5(?) {
    return sub_a577f9a5Address
}

function offeringToken() {
    return offeringTokenAddress
}

function addressList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return address(addressList[arg1])
}

function offeringAmount() {
    return offeringAmount
}

function getAddressListLength() {
    return addressList.length
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setRaisingAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    raisingAmount = arg1
}

function setOfferingAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    offeringAmount = arg1
}

function getUserAllocation(address arg1) {
    require calldata.size - 4 >= 32
    if not userInfo[address(arg1)].field_0:
        if not totalAmount:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalAmount / 10^6)
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmount:
        revert with 0, 'SafeMath: division by zero'
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6)
}

function deposit() payable {
    if block.number <= startBlock:
        revert with 0, 'not ifo time'
    if block.number >= endBlock:
        revert with 0, 'not ifo time'
    if msg.value <= 0:
        revert with 0, 'need _amount > 0'
    require ext_code.size(sub_a577f9a5Address)
    call sub_a577f9a5Address.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_a577f9a5Address)
    call sub_a577f9a5Address.0xa9059cbb with:
         gas gas_remaining wei
        args this.address, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not userInfo[msg.sender].field_0:
        addressList.length++
        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
    if msg.value + userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[msg.sender].field_0 += msg.value
    if msg.value + totalAmount < totalAmount:
        revert with 0, 'SafeMath: addition overflow'
    totalAmount += msg.value
    emit Deposit(msg.value, msg.sender);
}

function getRefundingAmount(address arg1) {
    require calldata.size - 4 >= 32
    if totalAmount <= raisingAmount:
        return 0
    if not userInfo[address(arg1)].field_0:
        if not totalAmount:
            revert with 0, 'SafeMath: division by zero'
        if not raisingAmount:
            if 0 > userInfo[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            return userInfo[address(arg1)].field_0
        if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return (userInfo[address(arg1)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmount:
        revert with 0, 'SafeMath: division by zero'
    if not raisingAmount:
        if 0 > userInfo[address(arg1)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        return userInfo[address(arg1)].field_0
    if 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userInfo[address(arg1)].field_0 - (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
}

function getOfferingAmount(address arg1) {
    require calldata.size - 4 >= 32
    if totalAmount <= raisingAmount:
        if not userInfo[address(arg1)].field_0:
            if not raisingAmount:
                revert with 0, 'SafeMath: division by zero'
            return (0 / raisingAmount)
        if offeringAmount * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != offeringAmount:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not raisingAmount:
            revert with 0, 'SafeMath: division by zero'
        return (offeringAmount * userInfo[address(arg1)].field_0 / raisingAmount)
    if not userInfo[address(arg1)].field_0:
        if not totalAmount:
            revert with 0, 'SafeMath: division by zero'
        if not offeringAmount:
            return 0
        if 0 / totalAmount / 10^6 * offeringAmount / offeringAmount != 0 / totalAmount / 10^6:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (0 / totalAmount / 10^6 * offeringAmount / 10^6)
    if 10^12 * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalAmount:
        revert with 0, 'SafeMath: division by zero'
    if not offeringAmount:
        return 0
    if 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * offeringAmount / offeringAmount != 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6)
}

function finalWithdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'admin: wut?'
    require ext_code.size(sub_a577f9a5Address)
    call sub_a577f9a5Address.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 32, 35, 0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45, mem[231 len 29]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 64] = 0, msg.sender, Mask(224, 32, arg2) >> 32
        call offeringTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg2, mem[228 len 28], mem[356 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        35,
                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                        mem[ceil32(return_data.size) + 232 len 29]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 293 len 64] = 0, msg.sender, Mask(224, 32, arg2) >> 32
        call offeringTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg2, mem[ceil32(return_data.size) + 229 len 28], mem[ceil32(return_data.size) + 357 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeBEP20: low-level call failed'
        else:
            mem[ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeBEP20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 325]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 404 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function harvest() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.number <= endBlock:
        revert with 0, 'not harvest time'
    if not userInfo[msg.sender].field_0:
        revert with 0, 'have you participated?'
    if userInfo[msg.sender].field_256:
        revert with 0, 'nothing to harvest'
    if totalAmount <= raisingAmount:
        if userInfo[address(msg.sender)].field_0:
            if offeringAmount * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != offeringAmount:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not raisingAmount:
                revert with 0, 'SafeMath: division by zero'
            if totalAmount <= raisingAmount:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) >> 32
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                userInfo[msg.sender].field_256 = 1
                emit Harvest(offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount, 0, msg.sender);
            else:
                if userInfo[address(msg.sender)].field_0:
                    if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalAmount:
                        revert with 0, 'SafeMath: division by zero'
                    if raisingAmount:
                        if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if not return_data.size:
                            if userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 716 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 717 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount, userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                        else:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                            if not userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                userInfo[msg.sender].field_256 = 1
                                emit Harvest(offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount, userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                            else:
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 716 len 29]
                                    userInfo[msg.sender].field_256 = 1
                                    emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                                 offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount,
                                                 0,
                                                 userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6),
                                                 msg.sender,
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 717 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
                                    userInfo[msg.sender].field_256 = 1
                                    emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                                 offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount,
                                                 userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6),
                                                 mem[(2 * ceil32(return_data.size)) + 678 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                 msg.sender,
                    else:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) >> 32
                        mem[644 len 0] = 0
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0:
                            require ext_code.size(sub_a577f9a5Address)
                            call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userInfo[address(msg.sender)].field_0 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 716 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 717 len 29]
                            ('bool', 'ext_call.success')
                        userInfo[msg.sender].field_256 = 1
                        emit Harvest(offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                else:
                    if not totalAmount:
                        revert with 0, 'SafeMath: division by zero'
                    if not raisingAmount:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) >> 32
                        mem[644 len 0] = 0
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0:
                            require ext_code.size(sub_a577f9a5Address)
                            call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userInfo[address(msg.sender)].field_0 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 716 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 717 len 29]
                            ('bool', 'ext_call.success')
                        userInfo[msg.sender].field_256 = 1
                        emit Harvest(offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                    else:
                        if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) >> 32
                        mem[644 len 0] = 0
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6):
                            require ext_code.size(sub_a577f9a5Address)
                            call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 716 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 717 len 29]
                            ('bool', 'ext_call.success')
                        userInfo[msg.sender].field_256 = 1
                        emit Harvest(offeringAmount * userInfo[address(msg.sender)].field_0 / raisingAmount, userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
        else:
            if not raisingAmount:
                revert with 0, 'SafeMath: division by zero'
            if totalAmount <= raisingAmount:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / raisingAmount) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                userInfo[msg.sender].field_256 = 1
                emit Harvest(0 / raisingAmount, 0, msg.sender);
            else:
                if not userInfo[address(msg.sender)].field_0:
                    if not totalAmount:
                        revert with 0, 'SafeMath: division by zero'
                    if not raisingAmount:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0:
                            require ext_code.size(sub_a577f9a5Address)
                            call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userInfo[address(msg.sender)].field_0 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 716 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 717 len 29]
                            ('bool', 'ext_call.success')
                        userInfo[msg.sender].field_256 = 1
                        emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                    else:
                        if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        mem[644 len 0] = 0
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6):
                            require ext_code.size(sub_a577f9a5Address)
                            call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 716 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 717 len 29]
                            ('bool', 'ext_call.success')
                        userInfo[msg.sender].field_256 = 1
                        emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                else:
                    if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not totalAmount:
                        revert with 0, 'SafeMath: division by zero'
                    if not raisingAmount:
                        if 0 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        mem[644 len 0] = 0
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0:
                            require ext_code.size(sub_a577f9a5Address)
                            call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args userInfo[address(msg.sender)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userInfo[address(msg.sender)].field_0 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 716 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 717 len 29]
                            ('bool', 'ext_call.success')
                        userInfo[msg.sender].field_256 = 1
                        emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0, msg.sender);
                    else:
                        if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(offeringTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / raisingAmount) >> 32
                        mem[644 len 0] = 0
                        call offeringTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / raisingAmount) << 224, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[612]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 691 len 22]
                        if userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6):
                            require ext_code.size(sub_a577f9a5Address)
                            call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[ceil32(return_data.size) + 716 len 29]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                35,
                                                0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                mem[(2 * ceil32(return_data.size)) + 717 len 29]
                            ('bool', 'ext_call.success')
                        userInfo[msg.sender].field_256 = 1
                        emit Harvest(0 / raisingAmount, userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
    else:
        if not userInfo[address(msg.sender)].field_0:
            if not totalAmount:
                revert with 0, 'SafeMath: division by zero'
            if offeringAmount:
                if 0 / totalAmount / 10^6 * offeringAmount / offeringAmount != 0 / totalAmount / 10^6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalAmount <= raisingAmount:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                    mem[516 len 0] = 0
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[msg.sender].field_256 = 1
                    emit Harvest(0 / totalAmount / 10^6 * offeringAmount / 10^6, 0, msg.sender);
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if raisingAmount:
                            if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                        else:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0:
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
                    else:
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if raisingAmount:
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                        else:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0:
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
            else:
                if totalAmount <= raisingAmount:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    mem[516 len 0] = 0
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[msg.sender].field_256 = 1
                    emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                 0,
                                 msg.sender,
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0:
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0, userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                    else:
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if not return_data.size:
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[msg.sender].field_256 = 1
                                    emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                                else:
                                    require ext_code.size(sub_a577f9a5Address)
                                    call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args userInfo[address(msg.sender)].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value userInfo[address(msg.sender)].field_0 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 844 len 29]
                                        userInfo[msg.sender].field_256 = 1
                                        emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                                     0,
                                                     0,
                                                     userInfo[address(msg.sender)].field_0,
                                                     msg.sender,
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[(2 * ceil32(return_data.size)) + 845 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
                                        userInfo[msg.sender].field_256 = 1
                                        emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                                     0,
                                                     userInfo[address(msg.sender)].field_0,
                                                     mem[(2 * ceil32(return_data.size)) + 806 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                            else:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                                if userInfo[address(msg.sender)].field_0:
                                    require ext_code.size(sub_a577f9a5Address)
                                    call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args userInfo[address(msg.sender)].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value userInfo[address(msg.sender)].field_0 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 844 len 29]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                    ('bool', 'ext_call.success')
                                userInfo[msg.sender].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0, userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
        else:
            if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not totalAmount:
                revert with 0, 'SafeMath: division by zero'
            if not offeringAmount:
                if totalAmount <= raisingAmount:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[msg.sender].field_256 = 1
                    emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                 0,
                                 msg.sender,
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if not return_data.size:
                                if userInfo[address(msg.sender)].field_0:
                                    require ext_code.size(sub_a577f9a5Address)
                                    call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args userInfo[address(msg.sender)].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value userInfo[address(msg.sender)].field_0 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 844 len 29]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                    ('bool', 'ext_call.success')
                                userInfo[msg.sender].field_256 = 1
                                emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                            else:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                                if not userInfo[address(msg.sender)].field_0:
                                    userInfo[msg.sender].field_256 = 1
                                    emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                                else:
                                    require ext_code.size(sub_a577f9a5Address)
                                    call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                         gas gas_remaining wei
                                        args userInfo[address(msg.sender)].field_0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value userInfo[address(msg.sender)].field_0 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[ceil32(return_data.size) + 844 len 29]
                                        userInfo[msg.sender].field_256 = 1
                                        emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                                     0,
                                                     0,
                                                     userInfo[address(msg.sender)].field_0,
                                                     msg.sender,
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        35,
                                                        0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                        mem[(2 * ceil32(return_data.size)) + 845 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 29]
                                        userInfo[msg.sender].field_256 = 1
                                        emit Harvest(address rg1, uint256 rg2, uint256 rg3):
                                                     0,
                                                     userInfo[address(msg.sender)].field_0,
                                                     mem[(2 * ceil32(return_data.size)) + 806 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                        else:
                            if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0, userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                    else:
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0:
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(0, userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
            else:
                if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / offeringAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalAmount <= raisingAmount:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(offeringTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                    mem[516 len 0] = 0
                    call offeringTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[484]:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 563 len 22]
                    userInfo[msg.sender].field_256 = 1
                    emit Harvest(10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6, 0, msg.sender);
                else:
                    if not userInfo[address(msg.sender)].field_0:
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0:
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if 0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0 - (0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
                    else:
                        if 10^12 * userInfo[address(msg.sender)].field_0 / userInfo[address(msg.sender)].field_0 != 10^12:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not totalAmount:
                            revert with 0, 'SafeMath: division by zero'
                        if not raisingAmount:
                            if 0 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0:
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args userInfo[address(msg.sender)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0, msg.sender);
                        else:
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / raisingAmount != 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6 > userInfo[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(offeringTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) >> 32
                            mem[772 len 0] = 0
                            call offeringTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6) << 224, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[740]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 819 len 22]
                            if userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6):
                                require ext_code.size(sub_a577f9a5Address)
                                call sub_a577f9a5Address.withdraw(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[ceil32(return_data.size) + 844 len 29]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    35,
                                                    0x775472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                                                    mem[(2 * ceil32(return_data.size)) + 845 len 29]
                                ('bool', 'ext_call.success')
                            userInfo[msg.sender].field_256 = 1
                            emit Harvest(10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * offeringAmount / 10^6, userInfo[address(msg.sender)].field_0 - (10^12 * userInfo[address(msg.sender)].field_0 / totalAmount / 10^6 * raisingAmount / 10^6), msg.sender);
    stor0 = 1
}



}
