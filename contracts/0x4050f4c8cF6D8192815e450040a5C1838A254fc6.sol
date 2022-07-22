contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 168
uint128 stor5; offset 168
address owner; offset 8
address stor6;
mapping of struct lockOf;
address stor8;
address stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)].field_0, lockOf[address(arg1)].field_256
}

function paused() payable {
    return bool(uint8(stor5.field_168))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_ca825f2b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    stor6 = arg1
}

function setStakingContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    stor9 = arg1
}

function pause() payable {
    if uint8(stor5.field_168):
        revert with 0, 'Pausable: paused'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    Mask(88, 0, stor5.field_168) = 1
    emit LogPaused(msg.sender);
}

function unpause() payable {
    if not uint8(stor5.field_168):
        revert with 0, 'Pausable: not paused'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    Mask(88, 0, stor5.field_168) = 0
    emit LogUnpaused(msg.sender);
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6545524332304c6f636b61626c653a206f6e6c7920646973747269627574696f6e20636f6e74726163742063616e206c6f636b20746f6b656e,
                    mem[221 len 7]
    lockOf[address(arg1)].field_0 = arg2
    lockOf[address(arg1)].field_256 = arg3
}

function sub_71038642(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    stor8 = arg1
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferAnyERC20Token(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit LogOwnershipTransferred(owner, arg1);
    owner = arg1
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_29a01b4d(?) payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x6e4f776e61626c653a206f6e6c7920636f6e7472616374206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[216 len 12]
    require ext_code.size(stor8)
    call stor8.burn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x654275726e696e673a206e6f7420706f737369626c6520746f20706572666f726d2074686520706572696f64696320746f6b656e20627572,
                    mem[220 len 8]
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if stor9 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x655374616b696e673a206f6e6c79207374616b696e6720636f6e74726163742063616e206d696e7420746f6b656e,
                    mem[210 len 18]
    if uint8(stor5.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if lockOf[0].field_256:
        if block.timestamp < lockOf[0].field_256:
            if lockOf[0].field_0 > balanceOf:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 > balanceOf - lockOf[0].field_0:
                revert with 0, 
                            32,
                            61,
                            0x6545524332304c6f636b61626c653a207472616e7366657220616d6f756e74206578636565647320746865206e6f6e2d6c6f636b65642062616c616e63,
                            mem[289 len 3]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if uint8(stor5.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if not lockOf[address(msg.sender)].field_256:
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    else:
        if block.timestamp >= lockOf[address(msg.sender)].field_256:
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        else:
            if lockOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 > balanceOf[address(msg.sender)] - lockOf[address(msg.sender)].field_0:
                revert with 0, 
                            32,
                            61,
                            0x6545524332304c6f636b61626c653a207472616e7366657220616d6f756e74206578636565647320746865206e6f6e2d6c6f636b65642062616c616e63,
                            mem[289 len 3]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[226 len 30], mem[286 len 2]
    ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    44,
                    0x7345524332304275726e61626c653a206275726e20616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[172 len 20],
                    mem[212 len 12]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x2e45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if uint8(stor5.field_168):
        revert with 0, 32, 42, 0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[302 len 22]
    if not lockOf[address(arg1)].field_256:
        if arg2 > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    else:
        if block.timestamp >= lockOf[address(arg1)].field_256:
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
        else:
            if lockOf[address(arg1)].field_0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 > balanceOf[address(arg1)] - lockOf[address(arg1)].field_0:
                revert with 0, 
                            32,
                            61,
                            0x6545524332304c6f636b61626c653a207472616e7366657220616d6f756e74206578636565647320746865206e6f6e2d6c6f636b65642062616c616e63,
                            mem[385 len 3]
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[322 len 30], mem[382 len 2]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if uint8(stor5.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if not lockOf[address(msg.sender)].field_256:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
    else:
        if block.timestamp >= lockOf[address(msg.sender)].field_256:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
        else:
            if lockOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 > balanceOf[address(msg.sender)] - lockOf[address(msg.sender)].field_0:
                revert with 0, 
                            32,
                            61,
                            0x6545524332304c6f636b61626c653a207472616e7366657220616d6f756e74206578636565647320746865206e6f6e2d6c6f636b65642062616c616e63,
                            mem[289 len 3]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
                    0x6545524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if uint8(stor5.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if not lockOf[address(arg1)].field_256:
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if block.timestamp >= lockOf[address(arg1)].field_256:
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if lockOf[address(arg1)].field_0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 > balanceOf[address(arg1)] - lockOf[address(arg1)].field_0:
                revert with 0, 
                            32,
                            61,
                            0x6545524332304c6f636b61626c653a207472616e7366657220616d6f756e74206578636565647320746865206e6f6e2d6c6f636b65642062616c616e63,
                            mem[289 len 3]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[230 len 26],
                            mem[282 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[328 len 24],
                            mem[376 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transferBatch(address[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg1.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    68,
                    0x73456767546f6b656e3a20746f20616e642076616c756573206172726179732073686f756c6420626520657175616c20696e2073697a6520616e64206e6f6e2d656d7074,
                    mem[232 len 28]
    if arg1.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    68,
                    0x73456767546f6b656e3a20746f20616e642076616c756573206172726179732073686f756c6420626520657175616c20696e2073697a6520616e64206e6f6e2d656d7074,
                    mem[232 len 28]
    idx = 0
    while idx < arg1.length:
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 32, 38, 0x73456767546f6b656e3a207472616e7366657220746f20746865207a65726f20616464726573, mem[mem[64] + 106 len 26]
        require idx < arg1.length
        require idx < arg2.length
        if uint8(stor5.field_168):
            revert with 0, 
                        32,
                        42,
                        0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[mem[64] + 110 len 22]
        mem[0] = msg.sender
        mem[32] = 7
        if not lockOf[address(msg.sender)].field_256:
            require idx < arg2.length
            _81 = mem[64]
            mem[64] = mem[64] + 96
            mem[_81] = 41
            mem[_81 + 32 len 41] = 0xfe456767546f6b656e3a207472616e7366657220616d6f756e7420657863656564732062616c616e63
            mem[32] = 0
            if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                _89 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 41
                idx = 0
                while idx < 41:
                    mem[_89 + idx + 68] = mem[_81 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_89 + 100] = mem[_89 + 123 len 9]
                revert with memory
                  from mem[64]
                   len _89 + -mem[64] + 132
        else:
            if block.timestamp >= lockOf[address(msg.sender)].field_256:
                require idx < arg2.length
                _82 = mem[64]
                mem[64] = mem[64] + 96
                mem[_82] = 41
                mem[_82 + 32 len 41] = 0xfe456767546f6b656e3a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                    _92 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[_92 + idx + 68] = mem[_82 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_92 + 100] = mem[_92 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _92 + -mem[64] + 132
            else:
                mem[0] = msg.sender
                mem[32] = 0
                _83 = mem[64]
                mem[64] = mem[64] + 64
                mem[_83] = 30
                mem[_83 + 32] = 'SafeMath: subtraction overflow'
                if lockOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)]:
                    _86 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_86 + idx + 68] = mem[_83 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_86 + 68] = mem[_86 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _86 + -mem[64] + 100
                if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)] - lockOf[address(msg.sender)].field_0:
                    revert with 0, 
                                32,
                                61,
                                0x6545524332304c6f636b61626c653a207472616e7366657220616d6f756e74206578636565647320746865206e6f6e2d6c6f636b65642062616c616e63,
                                mem[mem[64] + 129 len 3]
                require idx < arg2.length
                _113 = mem[64]
                mem[64] = mem[64] + 96
                mem[_113] = 41
                mem[_113 + 32 len 41] = 0xfe456767546f6b656e3a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                mem[32] = 0
                if cd[((32 * idx) + arg2 + 36)] > balanceOf[address(msg.sender)]:
                    _121 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 41
                    idx = 0
                    while idx < 41:
                        mem[_121 + idx + 68] = mem[_113 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_121 + 100] = mem[_121 + 123 len 9]
                    revert with memory
                      from mem[64]
                       len _121 + -mem[64] + 132
        ('le', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg2'))), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
        balanceOf[address(msg.sender)] -= cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        require idx < arg1.length
        if balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] < balanceOf[address(cd[((32 * idx) + arg1 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 0
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        mem[mem[64]] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}



}
