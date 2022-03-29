contract main {




// =====================  Runtime code  =====================


const name = ''

const decimals = 18


uint8 stor0;
uint8 stor0; offset 8
address owner; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address stor1;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() payable {
    return totalSupply
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

function claimOwnership() payable {
    if stor1 != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferCompleted(owner, stor1);
    Mask(240, 0, stor0.field_16) = stor1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferInitiated(owner, arg1);
    stor1 = arg1
}

function setSymbol(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    symbol.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x73436f76657245524332303a206d696e7420746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f76657245524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[205 len 23]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73436f76657245524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[203 len 25]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe436f76657245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[202 len 26]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    39,
                    0x73436f76657245524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                    mem[167 len 25],
                    mem[217 len 7]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 41, 0x64436f76657245524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[301 len 23]
    if not arg1:
        revert with 0, 32, 39, 0x73436f76657245524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[299 len 25]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function burnByCover(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe436f76657245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[202 len 26]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    39,
                    0x73436f76657245524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                    mem[167 len 25],
                    mem[217 len 7]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436f76657245524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[205 len 23]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73436f76657245524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[203 len 25]
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73436f76657245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[206 len 22]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x65436f76657245524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[204 len 24]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    43,
                    0x72436f76657245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[171 len 21],
                    mem[213 len 11]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73436f76657245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[206 len 22]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x65436f76657245524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[204 len 24]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    43,
                    0x72436f76657245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[171 len 21],
                    mem[213 len 11]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    45,
                    0x73436f76657245524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[269 len 19],
                    mem[307 len 13]
    if not arg1:
        revert with 0, 32, 41, 0x64436f76657245524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[397 len 23]
    if not msg.sender:
        revert with 0, 32, 39, 0x73436f76657245524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[395 len 25]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function initialize(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    symbol.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
    if uint8(stor0.field_8):
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
        emit OwnershipTransferCompleted(0, 0 or msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
            emit OwnershipTransferCompleted(0, 0 or msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
            emit OwnershipTransferCompleted(0, 0 or msg.sender);
            uint8(stor0.field_8) = 0
            uint8(stor0.field_8) = 0
}



}
