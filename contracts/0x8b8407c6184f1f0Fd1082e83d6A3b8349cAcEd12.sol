contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 allowance;
uint256 stor2;
address resolverAddress;
bool stor4; offset 256
uint8 transferable; offset 160
uint8 burnable; offset 168
uint8 visible; offset 176
uint8 allowPrivateTransactions; offset 184
uint8 stor4; offset 192
uint8 stor4; offset 200
uint64 stor4; offset 208
uint128 stor4; offset 184
uint128 stor4; offset 176
uint128 stor4; offset 168
uint128 stor4; offset 160
address stor4;
uint256 stor5;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;

function resolver() payable {
    return resolverAddress
}

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function allowPrivateTransactions() payable {
    return bool(allowPrivateTransactions)
}

function depositers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function transferable() payable {
    return bool(transferable)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function burnable() payable {
    return bool(burnable)
}

function viewers(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function visible() payable {
    return bool(visible)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function init() payable {
  stop
}

function _fallback() payable {
    revert
}

function blockNumberLocked() payable {
    if 0 == stor5:
        return stor5 != 0
    return (block.number < stor5)
}

function visibleOrAdmin() payable {
    if visible:
        return bool(visible)
    return (msg.sender == address(stor4.field_0))
}

function locked() payable {
    if uint8(stor4.field_192):
        return bool(uint8(stor4.field_192))
    if 0 == stor5:
        return stor5 != 0
    return (block.number < stor5)
}

function blocksTillUnlock() payable {
    if stor5 <= block.number:
        return 0
    if block.number > stor5:
        revert with 0, 'SafeMath: subtraction overflow'
    return (stor5 - block.number)
}

function lockedPermenantly() payable {
    if not uint8(stor4.field_192):
        if 0 == stor5:
            return stor5 != 0
        if block.number >= stor5:
            return (block.number < stor5)
    return bool(uint8(stor4.field_200))
}

function totalSupply() payable {
    if not visible:
        if not stor10[address(msg.sender)]:
            if address(stor4.field_0) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            63,
                            0x73436f6e7472616374206973207072697661746520616e6420796f7520617265206e6f7420476f7665726e6572206f72206f6e2076696577657273206c6973,
                            mem[227 len 1]
    return stor2
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not visible:
        if not stor10[address(msg.sender)]:
            if address(stor4.field_0) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            63,
                            0x73436f6e7472616374206973207072697661746520616e6420796f7520617265206e6f7420476f7665726e6572206f72206f6e2076696577657273206c6973,
                            mem[227 len 1]
    return stor0[address(arg1)]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > stor0[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    stor0[address(msg.sender)] -= arg1
    if arg1 > stor2:
        revert with 0, 'SafeMath: subtraction overflow'
    stor2 -= arg1
    if visible:
        emit Transfer(arg1, msg.sender, 0);
}

function deposit(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not stor11[address(msg.sender)]:
        revert with 0, 'No Depositing Privilages'
    require arg2.length >= 32
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if cd[(arg2 + 36)] + stor2 < stor2:
        revert with 0, 'SafeMath: addition overflow'
    stor2 += cd[(arg2 + 36)]
    if cd[(arg2 + 36)] + stor0[address(arg1)] < stor0[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor0[address(arg1)] += cd[(arg2 + 36)]
    if visible:
        emit Transfer(cd[(arg2 + 36)], 0, arg1);
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
    if visible:
        emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not burnable:
        revert with 0, 'Contract does not allow burning'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > stor0[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    stor0[address(msg.sender)] -= arg1
    if arg1 > stor2:
        revert with 0, 'SafeMath: subtraction overflow'
    stor2 -= arg1
    if visible:
        emit Transfer(arg1, msg.sender, 0);
}

function lockTemporarily() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    uint8(stor4.field_192) = 1
}

function toggleBurnable() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    Mask(88, 0, stor4.field_168) = Mask(88, 0, not burnable)
}

function toggleVisibility() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    Mask(80, 0, stor4.field_176) = Mask(80, 0, not visible)
}

function toggleTransferable() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    Mask(96, 0, stor4.field_160) = Mask(96, 0, not transferable)
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor9[address(arg1)] = 1
}

function addViewer(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor10[address(arg1)] = 1
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor9[address(arg1)] = 0
}

function addDepositer(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor11[address(arg1)] = 1
}

function removeViewer(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor10[address(arg1)] = 0
}

function removeDepositer(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor11[address(arg1)] = 0
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    if visible:
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function togglePrivateTransferability() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    Mask(72, 0, stor4.field_184) = Mask(72, 0, not allowPrivateTransactions)
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    if visible:
        emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor9[address(stor4.field_0)] = 0
    stor10[address(stor4.field_0)] = 0
    stor11[address(stor4.field_0)] = 0
    stor9[address(arg1)] = 1
    stor10[address(arg1)] = 1
    stor11[address(arg1)] = 1
    address(stor4.field_0) = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    stor9[address(stor4.field_0)] = 0
    stor10[address(stor4.field_0)] = 0
    stor11[address(stor4.field_0)] = 0
    stor9[address(arg1)] = 1
    stor10[address(arg1)] = 1
    stor11[address(arg1)] = 1
    address(stor4.field_0) = arg1
}

function lockTemporarilyTillBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7350726f766964656420426c6f636b206e756d626e657220697320696e2074686520706173,
                    mem[201 len 27]
    stor5 = arg1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9[address(msg.sender)]:
        revert with 0, 'No Minting Privilages'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + stor2 < stor2:
        revert with 0, 'SafeMath: addition overflow'
    stor2 += arg2
    if arg2 + stor0[address(arg1)] < stor0[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor0[address(arg1)] += arg2
    if visible:
        emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not transferable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6e747261637420646f6573206e6f7420616c6c6f77207472616e73666572696e,
                    mem[199 len 29]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > stor0[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stor0[address(msg.sender)] -= arg2
    if arg2 + stor0[arg1] < stor0[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    stor0[address(arg1)] = arg2 + stor0[arg1]
    if visible:
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function changeContractDetails(string arg1, string arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                    mem[204 len 24]
    if stor5 != 0:
        if block.number < stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x73436f6e7472616374206973206c6f636b656420746f20676f7665726e616e6365206368616e6765,
                        mem[204 len 24]
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
    symbol.length = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
    decimals = arg3
}

function lockForever() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        if uint8(stor4.field_200):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x65436f6e7472616374206c6f636b656420666f726576657220746f20676f7665726e616e6365206368616e6765,
                        mem[209 len 19]
        if stor5 != 0:
            if block.number < stor5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x436f6e747261637420686173206265656e206c6f636b656420756e74696c206120626c6f636b6e756d626500,
                            mem[208 len 20]
    else:
        if stor5 != 0:
            if block.number < stor5:
                if uint8(stor4.field_200):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                45,
                                0x65436f6e7472616374206c6f636b656420666f726576657220746f20676f7665726e616e6365206368616e6765,
                                mem[209 len 19]
            if stor5 != 0:
                if block.number < stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0x436f6e747261637420686173206265656e206c6f636b656420756e74696c206120626c6f636b6e756d626500,
                                mem[208 len 20]
    uint8(stor4.field_192) = 1
    uint8(stor4.field_200) = 1
    stor4.field_208 % 281474976710656 = 0
    stor4.field_256 % 1 = 0
}

function unLock() payable {
    if address(stor4.field_0) != msg.sender:
        revert with 0, 'gSender is not Governer'
    if uint8(stor4.field_192):
        if uint8(stor4.field_200):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x65436f6e7472616374206c6f636b656420666f726576657220746f20676f7665726e616e6365206368616e6765,
                        mem[209 len 19]
        if stor5 != 0:
            if block.number < stor5:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x436f6e747261637420686173206265656e206c6f636b656420756e74696c206120626c6f636b6e756d626500,
                            mem[208 len 20]
    else:
        if stor5 != 0:
            if block.number < stor5:
                if uint8(stor4.field_200):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                45,
                                0x65436f6e7472616374206c6f636b656420666f726576657220746f20676f7665726e616e6365206368616e6765,
                                mem[209 len 19]
            if stor5 != 0:
                if block.number < stor5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                44,
                                0x436f6e747261637420686173206265656e206c6f636b656420756e74696c206120626c6f636b6e756d626500,
                                mem[208 len 20]
    if not uint8(stor4.field_192):
        if 0 == stor5:
            revert with 0, 'Contract not locked'
        if block.number >= stor5:
            revert with 0, 'Contract not locked'
    uint8(stor4.field_192) = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if not transferable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6e747261637420646f6573206e6f7420616c6c6f77207472616e73666572696e,
                    mem[199 len 29]
    if not allowPrivateTransactions:
        if address(stor4.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6e74726163742063616e6e6f742073656e642070726976617465207472616e73616374696f6e,
                        mem[205 len 23]
    if not transferable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6e747261637420646f6573206e6f7420616c6c6f77207472616e73666572696e,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > stor0[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stor0[address(arg1)] -= arg3
    if arg3 + stor0[arg2] < stor0[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    stor0[address(arg2)] = arg3 + stor0[arg2]
    if not arg4:
        emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if not transferable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6e747261637420646f6573206e6f7420616c6c6f77207472616e73666572696e,
                    mem[199 len 29]
    if not allowPrivateTransactions:
        if address(stor4.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x65436f6e74726163742063616e6e6f742073656e642070726976617465207472616e73616374696f6e,
                        mem[205 len 23]
    if not transferable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6e747261637420646f6573206e6f7420616c6c6f77207472616e73666572696e,
                    mem[199 len 29]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > stor0[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stor0[address(msg.sender)] -= arg2
    if arg2 + stor0[arg1] < stor0[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    stor0[address(arg1)] = arg2 + stor0[arg1]
    if not arg3:
        emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not transferable:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6e747261637420646f6573206e6f7420616c6c6f77207472616e73666572696e,
                    mem[199 len 29]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > stor0[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    stor0[address(arg1)] -= arg3
    if arg3 + stor0[arg2] < stor0[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    stor0[address(arg2)] = arg3 + stor0[arg2]
    if not visible:
        emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if visible:
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[360 len 24],
                    mem[408 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[488 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[486 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if visible:
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
