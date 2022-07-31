contract main {




// =====================  Runtime code  =====================


#
#  - draw(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - initialize(string arg1, string arg2, uint8 arg3, address arg4)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor101;
uint256 stor102;
mapping of uint256 nonces;
uint256 stor154;
address controllerAddress;
mapping of struct stor205;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function DOMAIN_SEPARATOR() payable {
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address)
}

function chanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0:
        return 0
    require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
    return stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6f45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'ERC20Permit: expired deadline'
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 32, 34, 0x6545434453413a20696e76616c6964207369676e6174757265202773272076616c75, mem[712 len 30]
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 32, 34, 0x6445434453413a20696e76616c6964207369676e6174757265202776272076616c75, mem[712 len 30]
    signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, stor101, stor102, chainid, this.address), sha3(stor154, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'ERC20Permit: invalid signature'
    nonces[address(arg1)]++
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[770 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[770 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function controllerMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0, 'ControlledToken/only-controller'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    require ext_code.size(controllerAddress)
    call controllerAddress.0x7cbab1c7 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != 0:
        if arg1:
            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0:
                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                if arg2 + balanceOf[address(arg1)]:
                    if arg2 + balanceOf[address(arg1)] != stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 = arg2 + balanceOf[address(arg1)]
                        if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= arg2 + balanceOf[address(arg1)]:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= arg2 + balanceOf[address(arg1)]:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + arg2 + balanceOf[address(arg1)] - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - arg2 - balanceOf[address(arg1)] + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                        else:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= arg2 + balanceOf[address(arg1)]:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 - arg2 - balanceOf[address(arg1)]
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 + arg2 + balanceOf[address(arg1)]
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                else:
                    stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256++
                    stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 = 0
                    idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                    while idx:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 -= stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                        idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        continue 
            else:
                if arg2 + balanceOf[address(arg1)]:
                    if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256 - 1 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = 0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256--
                        require stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = arg2 + balanceOf[address(arg1)]
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = arg1
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_160 = 0
                        idx = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + arg2 + balanceOf[address(arg1)]
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
                    else:
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                        stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = arg2 + balanceOf[address(arg1)]
                        if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 != 1:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            if not stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 - 1 % stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                                stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = stor[(stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0) + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0 = 0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_0 = arg1
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_160 = 0
                        idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + arg2 + balanceOf[address(arg1)]
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function controllerBurn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0, 'ControlledToken/only-controller'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    require ext_code.size(controllerAddress)
    call controllerAddress.0x7cbab1c7 with:
         gas gas_remaining wei
        args address(arg1), 0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        if arg1:
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0:
                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                if balanceOf[address(arg1)] - arg2:
                    if balanceOf[address(arg1)] - arg2 != stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 = balanceOf[address(arg1)] - arg2
                        if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= balanceOf[address(arg1)] - arg2:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= balanceOf[address(arg1)] - arg2:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg1)] - arg2 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - balanceOf[address(arg1)] + arg2 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                        else:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= balanceOf[address(arg1)] - arg2:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 - balanceOf[address(arg1)] + arg2
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 + balanceOf[address(arg1)] - arg2
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                else:
                    stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256++
                    stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 = 0
                    idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                    while idx:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 -= stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                        idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        continue 
            else:
                if balanceOf[address(arg1)] - arg2:
                    if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256 - 1 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = 0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256--
                        require stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = balanceOf[address(arg1)] - arg2
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = arg1
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_160 = 0
                        idx = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg1)] - arg2
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
                    else:
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                        stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = balanceOf[address(arg1)] - arg2
                        if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 != 1:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            if not stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 - 1 % stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                                stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = stor[(stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0) + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0 = 0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_0 = arg1
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_160 = 0
                        idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg1)] - arg2
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'sERC20: burn amount exceeds balanc', Mask(224, 32, arg2) >> 32, 0
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function controllerBurnFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if controllerAddress != msg.sender:
        revert with 0, 'ControlledToken/only-controller'
    if arg1 == arg2:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
    else:
        if arg3 > allowance[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x65436f6e74726f6c6c6564546f6b656e2f657863656564732d616c6c6f77616e63, mem[161 len 31], mem[223 len 1]
        if not arg2:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        allowance[address(arg2)][address(arg1)] -= arg3
        emit Approval((allowance[address(arg2)][address(arg1)] - arg3), arg2, arg1);
        if not arg2:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    ('bool', ('param', 'arg2'))
    require ext_code.size(controllerAddress)
    call controllerAddress.0x7cbab1c7 with:
         gas gas_remaining wei
        args address(arg2), 0, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        if arg2:
            if arg3 > balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0:
                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                if balanceOf[address(arg2)] - arg3:
                    if balanceOf[address(arg2)] - arg3 != stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 = balanceOf[address(arg2)] - arg3
                        if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 <= balanceOf[address(arg2)] - arg3:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 <= balanceOf[address(arg2)] - arg3:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg2)] - arg3 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - balanceOf[address(arg2)] + arg3 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                        else:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 <= balanceOf[address(arg2)] - arg3:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 - balanceOf[address(arg2)] + arg3
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 + balanceOf[address(arg2)] - arg3
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                else:
                    stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256++
                    stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 = 0
                    idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                    while idx:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 -= stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0
                        idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        continue 
            else:
                if balanceOf[address(arg2)] - arg3:
                    if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256 - 1 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = 0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256--
                        require stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = balanceOf[address(arg2)] - arg3
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = arg2
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_160 = 0
                        idx = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg2)] - arg3
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
                    else:
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                        stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = balanceOf[address(arg2)] - arg3
                        if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 != 1:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            if not stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 - 1 % stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                                stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = stor[(stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0) + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0 = 0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_0 = arg2
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_160 = 0
                        idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg2)] - arg3
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
    if arg3 > balanceOf[address(arg2)]:
        revert with 0, 'sERC20: burn amount exceeds balanc', Mask(224, 32, arg3) >> 32, 0
    balanceOf[address(arg2)] -= arg3
    if arg3 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg3
    emit Transfer(arg3, arg2, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    require ext_code.size(controllerAddress)
    call controllerAddress.0x7cbab1c7 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != arg2:
        if arg1:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0:
                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                if balanceOf[address(arg1)] - arg3:
                    if balanceOf[address(arg1)] - arg3 != stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 = balanceOf[address(arg1)] - arg3
                        if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= balanceOf[address(arg1)] - arg3:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= balanceOf[address(arg1)] - arg3:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg1)] - arg3 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - balanceOf[address(arg1)] + arg3 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                        else:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 <= balanceOf[address(arg1)] - arg3:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 - balanceOf[address(arg1)] + arg3
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 + balanceOf[address(arg1)] - arg3
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                else:
                    stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256++
                    stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0 = 0
                    idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0
                    while idx:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 -= stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0].field_0
                        idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        continue 
            else:
                if balanceOf[address(arg1)] - arg3:
                    if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256 - 1 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = 0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256--
                        require stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = balanceOf[address(arg1)] - arg3
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = arg1
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_160 = 0
                        idx = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg1)] - arg3
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
                    else:
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                        stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = balanceOf[address(arg1)] - arg3
                        if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 != 1:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            if not stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 - 1 % stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                                stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = stor[(stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0) + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0 = 0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg1)].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_0 = arg1
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_160 = 0
                        idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + balanceOf[address(arg1)] - arg3
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
        if arg2:
            if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0:
                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                if arg3 + balanceOf[address(arg2)]:
                    if arg3 + balanceOf[address(arg2)] != stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 = arg3 + balanceOf[address(arg2)]
                        if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 <= arg3 + balanceOf[address(arg2)]:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 <= arg3 + balanceOf[address(arg2)]:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + arg3 + balanceOf[address(arg2)] - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - arg3 - balanceOf[address(arg2)] + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                        else:
                            idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                            while idx:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                                if stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 <= arg3 + balanceOf[address(arg2)]:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 - arg3 - balanceOf[address(arg2)]
                                else:
                                    stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 - stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 + arg3 + balanceOf[address(arg2)]
                                idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                continue 
                else:
                    stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256++
                    stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 = 0
                    stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0 = 0
                    idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0
                    while idx:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 -= stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0].field_0
                        idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                        continue 
            else:
                if arg3 + balanceOf[address(arg2)]:
                    if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256:
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256 - 1 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256
                        stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 = 0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256--
                        require stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = arg3 + balanceOf[address(arg2)]
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_0 = arg2
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0].field_160 = 0
                        idx = stor[('array', 1, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_256].field_0
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + arg3 + balanceOf[address(arg2)]
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
                    else:
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                        stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = arg3 + balanceOf[address(arg2)]
                        if stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 != 1:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            if not stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 - 1 % stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0:
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                                require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512++
                                stor[stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0 = stor[(stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0) + ('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205)))].field_0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0 = 0
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1
                                stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 + 1].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0].field_0
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][3][address(arg2)].field_0 = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_0 = arg2
                        stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2][4][stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512].field_160 = 0
                        idx = stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                        while idx:
                            require stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            require idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0 < stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_512
                            mem[0] = sha3(0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2, 205) + 2
                            stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 = stor[('array', 2, ('map', 45993277474392377403261237265442368230535156207289996316186339946985178158002, ('name', 'stor205', 205))) + (idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0)].field_0 + arg3 + balanceOf[address(arg2)]
                            idx = idx - 1 / stor205[0x65af45c4fb9ef70911e5444b8eedce607366e494224d52e6feab07fbd62a53b2].field_0
                            continue 
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, Mask(208, 32, arg3) >> 32, 0
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6f45524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
