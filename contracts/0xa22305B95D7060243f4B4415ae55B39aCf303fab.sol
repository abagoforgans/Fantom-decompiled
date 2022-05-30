contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - resetApprovals()
#  - approveContracts()
#  - rebalanceCollateral()
#  - withdrawAll()
#  - sub_ae263a1d(?)
#
const sub_2cf4e4ee(?) = ext_call.return_data[0]

const routerAddress = 0xf491e7b69e4244ad4002bc14e878a34207e38c29

const sub_3ad184e4(?) = 0xe45ac34e528907d0a0239ab5db507688070b20bf

const sub_668ecbf2(?) = 0x30872e4fc4edbfd7a352bfc2463eb4fae9c09086

const comptrollerAddress = 0x260e596dabe3afc463e75b6cc05d8c46acacfb09

const sub_6c1a35be(?) = 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c

const farmPid = 2

const sub_b2ad2f0f(?) = 0x5aa53f03197e08c4851cad8c92c7922da5857e5d

const sub_c1e32a3d(?) = 0xec7178f4c41f346b2721907f5cf7628e388a7a58

const farmToken = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const sub_e43e7b94(?) = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const sub_eb61c72a(?) = ext_call.return_data[0]

const farmAddress = 0x2b2929e785374c651a81a63878ab22742656dcdd


uint256 stor0;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sub_39bb9c24;
uint256 sub_54b1a6d8;
address stor10;
address stor11;
address stor12;
address stor15;
address strategistAddress;
address keeperAddress;
uint256 sub_f8c1e75e;
uint256 sub_a9b0ca38;
uint256 sub_c089f572;
uint256 lastHarvest;
uint256 withdrawalFee;
uint256 reserveAllocation;
uint256 depositLimit;
uint256 sub_b4aafb60;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function strategist() payable {
    return strategistAddress
}

function decimals() payable {
    return decimals
}

function sub_39bb9c24(?) payable {
    return sub_39bb9c24
}

function sub_54b1a6d8(?) payable {
    return sub_54b1a6d8
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a9b0ca38(?) payable {
    return sub_a9b0ca38
}

function keeper() payable {
    return keeperAddress
}

function sub_b4aafb60(?) payable {
    return sub_b4aafb60
}

function sub_c089f572(?) payable {
    return sub_c089f572
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function depositLimit() payable {
    return depositLimit
}

function lastHarvest() payable {
    return lastHarvest
}

function sub_f8c1e75e(?) payable {
    return sub_f8c1e75e
}

function reserveAllocation() payable {
    return reserveAllocation
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_bf428341(?) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        require msg.sender == owner
    sub_39bb9c24 = arg1
    sub_54b1a6d8 = arg2
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require arg1
    keeperAddress = arg1
    emit UpdatedKeeper(arg1);
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require arg1
    strategistAddress = arg1
    emit UpdatedStrategist(arg1);
}

function sub_b574d287(?) payable {
    require calldata.size - 4 >= 64
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require arg1 <= 50000
    require arg2 <= 750000
    reserveAllocation = arg1
    sub_b4aafb60 = arg2
}

function sub_94c04ced(?) payable {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require 750000 > arg2
    require arg2 >= arg3
    require arg3 >= arg1
    sub_f8c1e75e = arg2
    sub_a9b0ca38 = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if strategistAddress != msg.sender:
        require msg.sender == owner
    require arg1 <= 5000
    require arg2 <= 50000
    require arg3 <= 100000
    sub_c089f572 = arg2
    withdrawalFee = arg1
}

function sub_8ad56bff(?) payable {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c3b49f3d(?) payable {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_feb6848a(?) payable {
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_5627f7b5(?) payable {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args 0xe45ac34e528907d0a0239ab5db507688070b20bf
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
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
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_a9c19c66(?) payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
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
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_4d54e307(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * arg1 / ext_call.return_data[0])
}

function sub_7845790c(?) payable {
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_cad20a29(?) payable {
    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
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
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_a877cc55(?) payable {
    if strategistAddress != msg.sender:
        require msg.sender == owner
    if lastHarvest > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_c089f572:
        if not owner:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[stor1] < balanceOf[stor1]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, owner);
    else:
        if (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) / sub_c089f572 != block.timestamp - lastHarvest:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572):
            if not owner:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            if balanceOf[stor1] < balanceOf[stor1]:
                revert with 0, 'SafeMath: addition overflow'
            emit Transfer(0, 0, owner);
        else:
            if (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / (block.timestamp * sub_c089f572) - (lastHarvest * sub_c089f572) != totalSupply:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not owner:
                revert with 0, 'ERC20: mint to the zero address'
            if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10^6 / 8760 * 24 * 3600) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10^6 / 8760 * 24 * 3600
            if ((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10^6 / 8760 * 24 * 3600) + balanceOf[stor1] < balanceOf[stor1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor1] += (block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10^6 / 8760 * 24 * 3600
            emit Transfer(((block.timestamp * sub_c089f572 * totalSupply) - (lastHarvest * sub_c089f572 * totalSupply) / 10^6 / 8760 * 24 * 3600), 0, owner);
    lastHarvest = block.timestamp
}

function sub_e6e7114b(?) payable {
    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor15)
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
        staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 / ext_call.return_data[0]:
                if 10^6 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / ext_call.return_data[0]:
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if 10^6 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (10^6 * 0 / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
            if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        revert with 0, 'SafeMath: division by zero'
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if 10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: division by zero'
    return (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function calcPoolValueInToken() payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return ext_call.return_data[0]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
}

function getPricePerFullShare() payable {
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / totalSupply)
                if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (10^6 * ext_call.return_data[0] / totalSupply)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / totalSupply)
            if (10^6 * ext_call.return_data[0]) - (10^6 * 0 / ext_call.return_data[0]) + (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((10^6 * ext_call.return_data[0]) - (10^6 * 0 / ext_call.return_data[0]) + (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / totalSupply)
            if (10^6 * ext_call.return_data[0]) - (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (10^6 * 0 / ext_call.return_data[0]) / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((10^6 * ext_call.return_data[0]) - (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (10^6 * 0 / ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (0 / totalSupply)
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (10^6 * ext_call.return_data[0] / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / totalSupply)
            if (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return ((10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) / totalSupply)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (0 / totalSupply)
        if (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) - (10^6 * 0 / ext_call.return_data[0]) + (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return ((10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) - (10^6 * 0 / ext_call.return_data[0]) + (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            return (0 / totalSupply)
        if (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) - (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (10^6 * 0 / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return ((10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) - (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (10^6 * 0 / ext_call.return_data[0]) / totalSupply)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply)
    if (10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] != 10^6:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return ((10^6 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^6 * ext_call.return_data[0]) / totalSupply)
}

function sub_11d1a392(?) payable {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    return (0 / ext_call.return_data[0])
                if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (10^6 * ext_call.return_data[0] / ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
            if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (10^6 * ext_call.return_data[0] / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                return (0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
            if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (10^6 * ext_call.return_data[0] / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (0 / ext_call.return_data[0])
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (10^6 * ext_call.return_data[0] / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
            if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            return (10^6 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (10^6 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    staticcall stor11.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args stor12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (10^6 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] != 10^6:
        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^6 * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    if not arg1:
        revert with 0, 'deposit must be greater than 0'
    require arg1 <= depositLimit
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                        emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                        if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                        emit Transfer((totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (totalSupply * arg1 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((totalSupply * arg1 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (totalSupply * arg1 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((totalSupply * arg1 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                        emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                        if (totalSupply * arg1 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                        emit Transfer((totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender);
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not arg1:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * arg1 / arg1 != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * arg1) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * arg1
                        if (10000 * arg1) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * arg1
                        emit Transfer((10000 * arg1), 0, msg.sender);
                else:
                    if not arg1:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * arg1 / arg1 != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((totalSupply * arg1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
    if stor0 + 1 != stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function depositAll() payable {
    require ext_code.size(stor10)
    staticcall stor10.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0++
    if not ext_call.return_data[0]:
        revert with 0, 'deposit must be greater than 0'
    require ext_call.return_data[0] <= depositLimit
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                        emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / ext_call.return_data[0]
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / ext_call.return_data[0]
                        emit Transfer((totalSupply * ext_call.return_data[0] / ext_call.return_data[0]), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((0 / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((0 / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((totalSupply * ext_call.return_data[0] / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                        emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / ext_call.return_data[0]
                        if (totalSupply * ext_call.return_data[0] / ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / ext_call.return_data[0]
                        emit Transfer((totalSupply * ext_call.return_data[0] / ext_call.return_data[0]), 0, msg.sender);
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor10)
        staticcall stor10.0x70a08231 with:
                gas gas_remaining wei
               args stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        emit Transfer((totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])), 0, msg.sender);
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])
                        emit Transfer((totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0])), 0, msg.sender);
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not totalSupply:
                    if not ext_call.return_data[0]:
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, 0, msg.sender);
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10000 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10000 * ext_call.return_data[0]
                        if (10000 * ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10000 * ext_call.return_data[0]
                        emit Transfer((10000 * ext_call.return_data[0]), 0, msg.sender);
                else:
                    if not ext_call.return_data[0]:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((0 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
                    else:
                        if totalSupply * ext_call.return_data[0] / ext_call.return_data[0] != totalSupply:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        if (totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
                        emit Transfer((totalSupply * ext_call.return_data[0] / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]), 0, msg.sender);
    if stor0 + 1 != stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function sub_d2d9a69d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if msg.sender == strategistAddress:
        idx = 0
        s = 0
        while idx < 10:
            if s:
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _3973 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3973] = 26
                mem[_3973 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3973 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _4059 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4059] = 26
                    mem[_4059 + 32] = 'SafeMath: division by zero'
                    _4071 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4071] = 26
                    mem[_4071 + 32] = 'SafeMath: division by zero'
                    _4089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4089] = 26
                    mem[_4089 + 32] = 'SafeMath: division by zero'
                    _4113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4113] = 30
                    mem[_4113 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / ext_call.return_data[0] > 0:
                        _4121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4121 + 68] = mem[idx + _4113 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4121 + 68] = mem[_4121 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4121 + -mem[64] + 100
                    if -0 / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -0 / ext_call.return_data[0]:
                            _4591 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4591] = 26
                            mem[_4591 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _4591 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _4877 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4877] = 26
                            mem[_4877 + 32] = 'SafeMath: division by zero'
                            _5333 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_5333]
                            mem[_5333 + 32] = stor10
                            require 1 < mem[_5333]
                            mem[_5333 + 64] = stor11
                            mem[_5333 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_5333 + 100] = -0 / ext_call.return_data[0]
                            mem[_5333 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_5333 + 196] = this.address
                            mem[_5333 + 228] = block.timestamp + 120
                            mem[_5333 + 164] = 160
                            mem[_5333 + 260] = mem[_5333]
                            t = 0
                            while t < 32 * mem[_5333]:
                                mem[t + _5333 + 292] = mem[t + _5333 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5333 + 260 len (32 * mem[_5333]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5333 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_5333 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_5333 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_5333 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                _4615 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4615] = 26
                                mem[_4615 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4615 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _4971 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4971] = 26
                                mem[_4971 + 32] = 'SafeMath: division by zero'
                                _5380 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5380]
                                mem[_5380 + 32] = stor10
                                require 1 < mem[_5380]
                                mem[_5380 + 64] = stor11
                                mem[_5380 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5380 + 100] = -0 / ext_call.return_data[0]
                                mem[_5380 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5380 + 196] = this.address
                                mem[_5380 + 228] = block.timestamp + 120
                                mem[_5380 + 164] = 160
                                mem[_5380 + 260] = mem[_5380]
                                t = 0
                                while t < 32 * mem[_5380]:
                                    mem[t + _5380 + 292] = mem[t + _5380 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5380 + 260 len (32 * mem[_5380]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5380 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5380 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5380 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5380 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4641 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4641] = 26
                                mem[_4641 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4641 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5071 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5071] = 26
                                mem[_5071 + 32] = 'SafeMath: division by zero'
                                _5446 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5446]
                                mem[_5446 + 32] = stor10
                                require 1 < mem[_5446]
                                mem[_5446 + 64] = stor11
                                mem[_5446 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5446 + 100] = -0 / ext_call.return_data[0]
                                mem[_5446 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_5446 + 196] = this.address
                                mem[_5446 + 228] = block.timestamp + 120
                                mem[_5446 + 164] = 160
                                mem[_5446 + 260] = mem[_5446]
                                t = 0
                                while t < 32 * mem[_5446]:
                                    mem[t + _5446 + 292] = mem[t + _5446 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5446 + 260 len (32 * mem[_5446]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5446 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5446 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5446 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5446 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                    call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if -0 / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -0 / ext_call.return_data[0]:
                            _5240 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5240] = 26
                            mem[_5240 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5240 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _5651 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5651] = 26
                            mem[_5651 + 32] = 'SafeMath: division by zero'
                            _6236 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_6236]
                            mem[_6236 + 32] = stor10
                            require 1 < mem[_6236]
                            mem[_6236 + 64] = stor11
                            mem[_6236 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_6236 + 100] = -0 / ext_call.return_data[0]
                            mem[_6236 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_6236 + 196] = this.address
                            mem[_6236 + 228] = block.timestamp + 120
                            mem[_6236 + 164] = 160
                            mem[_6236 + 260] = mem[_6236]
                            s = 0
                            while s < 32 * mem[_6236]:
                                mem[s + _6236 + 292] = mem[s + _6236 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6236 + 260 len (32 * mem[_6236]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6236 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_6236 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_6236 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_6236 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                _5295 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5295] = 26
                                mem[_5295 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5295 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5764 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5764] = 26
                                mem[_5764 + 32] = 'SafeMath: division by zero'
                                _6297 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6297]
                                mem[_6297 + 32] = stor10
                                require 1 < mem[_6297]
                                mem[_6297 + 64] = stor11
                                mem[_6297 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6297 + 100] = -0 / ext_call.return_data[0]
                                mem[_6297 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6297 + 196] = this.address
                                mem[_6297 + 228] = block.timestamp + 120
                                mem[_6297 + 164] = 160
                                mem[_6297 + 260] = mem[_6297]
                                s = 0
                                while s < 32 * mem[_6297]:
                                    mem[s + _6297 + 292] = mem[s + _6297 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6297 + 260 len (32 * mem[_6297]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6297 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6297 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6297 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6297 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5335 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5335] = 26
                                mem[_5335 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5335 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5875 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5875] = 26
                                mem[_5875 + 32] = 'SafeMath: division by zero'
                                _6352 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6352]
                                mem[_6352 + 32] = stor10
                                require 1 < mem[_6352]
                                mem[_6352 + 64] = stor11
                                mem[_6352 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6352 + 100] = -0 / ext_call.return_data[0]
                                mem[_6352 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_6352 + 196] = this.address
                                mem[_6352 + 228] = block.timestamp + 120
                                mem[_6352 + 164] = 160
                                mem[_6352 + 260] = mem[_6352]
                                s = 0
                                while s < 32 * mem[_6352]:
                                    mem[s + _6352 + 292] = mem[s + _6352 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6352 + 260 len (32 * mem[_6352]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6352 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6352 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6352 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6352 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4064 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4064] = 26
                    mem[_4064 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        _4078 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4078] = 26
                        mem[_4078 + 32] = 'SafeMath: division by zero'
                        _4094 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4094] = 26
                        mem[_4094 + 32] = 'SafeMath: division by zero'
                        _4116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4116] = 30
                        mem[_4116 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / ext_call.return_data[0] > 0:
                            _4134 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4134 + 68] = mem[idx + _4116 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4134 + 68] = mem[_4134 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4134 + -mem[64] + 100
                        if -0 / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(0 / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -0 / ext_call.return_data[0]:
                                _4613 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4613] = 26
                                mem[_4613 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4613 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _4966 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4966] = 26
                                mem[_4966 + 32] = 'SafeMath: division by zero'
                                _5374 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5374]
                                mem[_5374 + 32] = stor10
                                require 1 < mem[_5374]
                                mem[_5374 + 64] = stor11
                                mem[_5374 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5374 + 100] = -0 / ext_call.return_data[0]
                                mem[_5374 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5374 + 196] = this.address
                                mem[_5374 + 228] = block.timestamp + 120
                                mem[_5374 + 164] = 160
                                mem[_5374 + 260] = mem[_5374]
                                t = 0
                                while t < 32 * mem[_5374]:
                                    mem[t + _5374 + 292] = mem[t + _5374 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5374 + 260 len (32 * mem[_5374]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5374 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5374 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5374 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5374 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                    _4640 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4640] = 26
                                    mem[_4640 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4640 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5067 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5067] = 26
                                    mem[_5067 + 32] = 'SafeMath: division by zero'
                                    _5439 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5439]
                                    mem[_5439 + 32] = stor10
                                    require 1 < mem[_5439]
                                    mem[_5439 + 64] = stor11
                                    mem[_5439 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5439 + 100] = -0 / ext_call.return_data[0]
                                    mem[_5439 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5439 + 196] = this.address
                                    mem[_5439 + 228] = block.timestamp + 120
                                    mem[_5439 + 164] = 160
                                    mem[_5439 + 260] = mem[_5439]
                                    t = 0
                                    while t < 32 * mem[_5439]:
                                        mem[t + _5439 + 292] = mem[t + _5439 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5439 + 260 len (32 * mem[_5439]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5439 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5439 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5439 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5439 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4676 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4676] = 26
                                    mem[_4676 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4676 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5162 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5162] = 26
                                    mem[_5162 + 32] = 'SafeMath: division by zero'
                                    _5531 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5531]
                                    mem[_5531 + 32] = stor10
                                    require 1 < mem[_5531]
                                    mem[_5531 + 64] = stor11
                                    mem[_5531 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5531 + 100] = -0 / ext_call.return_data[0]
                                    mem[_5531 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_5531 + 196] = this.address
                                    mem[_5531 + 228] = block.timestamp + 120
                                    mem[_5531 + 164] = 160
                                    mem[_5531 + 260] = mem[_5531]
                                    t = 0
                                    while t < 32 * mem[_5531]:
                                        mem[t + _5531 + 292] = mem[t + _5531 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5531 + 260 len (32 * mem[_5531]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5531 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5531 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5531 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5531 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s
                            continue 
                        mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -0 / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(0 / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -0 / ext_call.return_data[0]:
                                _5294 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5294] = 26
                                mem[_5294 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5294 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5759 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5759] = 26
                                mem[_5759 + 32] = 'SafeMath: division by zero'
                                _6295 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6295]
                                mem[_6295 + 32] = stor10
                                require 1 < mem[_6295]
                                mem[_6295 + 64] = stor11
                                mem[_6295 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6295 + 100] = -0 / ext_call.return_data[0]
                                mem[_6295 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6295 + 196] = this.address
                                mem[_6295 + 228] = block.timestamp + 120
                                mem[_6295 + 164] = 160
                                mem[_6295 + 260] = mem[_6295]
                                s = 0
                                while s < 32 * mem[_6295]:
                                    mem[s + _6295 + 292] = mem[s + _6295 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6295 + 260 len (32 * mem[_6295]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6295 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6295 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6295 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6295 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                    _5332 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5332] = 26
                                    mem[_5332 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5332 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5868 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5868] = 26
                                    mem[_5868 + 32] = 'SafeMath: division by zero'
                                    _6349 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6349]
                                    mem[_6349 + 32] = stor10
                                    require 1 < mem[_6349]
                                    mem[_6349 + 64] = stor11
                                    mem[_6349 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6349 + 100] = -0 / ext_call.return_data[0]
                                    mem[_6349 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6349 + 196] = this.address
                                    mem[_6349 + 228] = block.timestamp + 120
                                    mem[_6349 + 164] = 160
                                    mem[_6349 + 260] = mem[_6349]
                                    s = 0
                                    while s < 32 * mem[_6349]:
                                        mem[s + _6349 + 292] = mem[s + _6349 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6349 + 260 len (32 * mem[_6349]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6349 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6349 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6349 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6349 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5376 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5376] = 26
                                    mem[_5376 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5376 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5975 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5975] = 26
                                    mem[_5975 + 32] = 'SafeMath: division by zero'
                                    _6400 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6400]
                                    mem[_6400 + 32] = stor10
                                    require 1 < mem[_6400]
                                    mem[_6400 + 64] = stor11
                                    mem[_6400 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6400 + 100] = -0 / ext_call.return_data[0]
                                    mem[_6400 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_6400 + 196] = this.address
                                    mem[_6400 + 228] = block.timestamp + 120
                                    mem[_6400 + 164] = 160
                                    mem[_6400 + 260] = mem[_6400]
                                    s = 0
                                    while s < 32 * mem[_6400]:
                                        mem[s + _6400 + 292] = mem[s + _6400 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6400 + 260 len (32 * mem[_6400]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6400 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6400 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6400 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6400 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 750000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4084] = 26
                        mem[_4084 + 32] = 'SafeMath: division by zero'
                        if not 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6:
                            _4102 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4102] = 26
                            mem[_4102 + 32] = 'SafeMath: division by zero'
                            _4120 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4120] = 30
                            mem[_4120 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / ext_call.return_data[0] > 0:
                                _4149 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4149 + 68] = mem[idx + _4120 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4149 + 68] = mem[_4149 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4149 + -mem[64] + 100
                            if -0 / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -0 / ext_call.return_data[0]:
                                    _4638 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4638] = 26
                                    mem[_4638 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4638 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5062 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5062] = 26
                                    mem[_5062 + 32] = 'SafeMath: division by zero'
                                    _5433 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5433]
                                    mem[_5433 + 32] = stor10
                                    require 1 < mem[_5433]
                                    mem[_5433 + 64] = stor11
                                    mem[_5433 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5433 + 100] = -0 / ext_call.return_data[0]
                                    mem[_5433 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5433 + 196] = this.address
                                    mem[_5433 + 228] = block.timestamp + 120
                                    mem[_5433 + 164] = 160
                                    mem[_5433 + 260] = mem[_5433]
                                    t = 0
                                    while t < 32 * mem[_5433]:
                                        mem[t + _5433 + 292] = mem[t + _5433 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5433 + 260 len (32 * mem[_5433]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5433 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5433 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5433 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5433 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                        _4675 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4675] = 26
                                        mem[_4675 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4675 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5158 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5158] = 26
                                        mem[_5158 + 32] = 'SafeMath: division by zero'
                                        _5524 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5524]
                                        mem[_5524 + 32] = stor10
                                        require 1 < mem[_5524]
                                        mem[_5524 + 64] = stor11
                                        mem[_5524 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5524 + 100] = -0 / ext_call.return_data[0]
                                        mem[_5524 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5524 + 196] = this.address
                                        mem[_5524 + 228] = block.timestamp + 120
                                        mem[_5524 + 164] = 160
                                        mem[_5524 + 260] = mem[_5524]
                                        t = 0
                                        while t < 32 * mem[_5524]:
                                            mem[t + _5524 + 292] = mem[t + _5524 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5524 + 260 len (32 * mem[_5524]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5524 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5524 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5524 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5524 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4721 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4721] = 26
                                        mem[_4721 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4721 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5233 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5233] = 26
                                        mem[_5233 + 32] = 'SafeMath: division by zero'
                                        _5632 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5632]
                                        mem[_5632 + 32] = stor10
                                        require 1 < mem[_5632]
                                        mem[_5632 + 64] = stor11
                                        mem[_5632 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5632 + 100] = -0 / ext_call.return_data[0]
                                        mem[_5632 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_5632 + 196] = this.address
                                        mem[_5632 + 228] = block.timestamp + 120
                                        mem[_5632 + 164] = 160
                                        mem[_5632 + 260] = mem[_5632]
                                        t = 0
                                        while t < 32 * mem[_5632]:
                                            mem[t + _5632 + 292] = mem[t + _5632 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5632 + 260 len (32 * mem[_5632]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5632 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5632 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5632 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5632 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -0 / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -0 / ext_call.return_data[0]:
                                    _5331 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5331] = 26
                                    mem[_5331 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5331 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5863 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5863] = 26
                                    mem[_5863 + 32] = 'SafeMath: division by zero'
                                    _6347 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6347]
                                    mem[_6347 + 32] = stor10
                                    require 1 < mem[_6347]
                                    mem[_6347 + 64] = stor11
                                    mem[_6347 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6347 + 100] = -0 / ext_call.return_data[0]
                                    mem[_6347 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6347 + 196] = this.address
                                    mem[_6347 + 228] = block.timestamp + 120
                                    mem[_6347 + 164] = 160
                                    mem[_6347 + 260] = mem[_6347]
                                    s = 0
                                    while s < 32 * mem[_6347]:
                                        mem[s + _6347 + 292] = mem[s + _6347 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6347 + 260 len (32 * mem[_6347]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6347 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6347 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6347 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6347 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                        _5373 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5373] = 26
                                        mem[_5373 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5373 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5968 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5968] = 26
                                        mem[_5968 + 32] = 'SafeMath: division by zero'
                                        _6397 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6397]
                                        mem[_6397 + 32] = stor10
                                        require 1 < mem[_6397]
                                        mem[_6397 + 64] = stor11
                                        mem[_6397 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6397 + 100] = -0 / ext_call.return_data[0]
                                        mem[_6397 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6397 + 196] = this.address
                                        mem[_6397 + 228] = block.timestamp + 120
                                        mem[_6397 + 164] = 160
                                        mem[_6397 + 260] = mem[_6397]
                                        s = 0
                                        while s < 32 * mem[_6397]:
                                            mem[s + _6397 + 292] = mem[s + _6397 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6397 + 260 len (32 * mem[_6397]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6397 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6397 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6397 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6397 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5435 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5435] = 26
                                        mem[_5435 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5435 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6066 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6066] = 26
                                        mem[_6066 + 32] = 'SafeMath: division by zero'
                                        _6447 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6447]
                                        mem[_6447 + 32] = stor10
                                        require 1 < mem[_6447]
                                        mem[_6447 + 64] = stor11
                                        mem[_6447 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6447 + 100] = -0 / ext_call.return_data[0]
                                        mem[_6447 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_6447 + 196] = this.address
                                        mem[_6447 + 228] = block.timestamp + 120
                                        mem[_6447 + 164] = 160
                                        mem[_6447 + 260] = mem[_6447]
                                        s = 0
                                        while s < 32 * mem[_6447]:
                                            mem[s + _6447 + 292] = mem[s + _6447 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6447 + 260 len (32 * mem[_6447]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6447 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6447 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6447 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6447 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 != sub_39bb9c24:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4108 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4108] = 26
                            mem[_4108 + 32] = 'SafeMath: division by zero'
                            _4133 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4133] = 30
                            mem[_4133 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / ext_call.return_data[0] > sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6:
                                _4165 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4165 + 68] = mem[idx + _4133 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4165 + 68] = mem[_4165 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4165 + -mem[64] + 100
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]):
                                    _4673 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4673] = 26
                                    mem[_4673 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4673 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5153 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5153] = 26
                                    mem[_5153 + 32] = 'SafeMath: division by zero'
                                    _5518 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5518]
                                    mem[_5518 + 32] = stor10
                                    require 1 < mem[_5518]
                                    mem[_5518 + 64] = stor11
                                    mem[_5518 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5518 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                    mem[_5518 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5518 + 196] = this.address
                                    mem[_5518 + 228] = block.timestamp + 120
                                    mem[_5518 + 164] = 160
                                    mem[_5518 + 260] = mem[_5518]
                                    t = 0
                                    while t < 32 * mem[_5518]:
                                        mem[t + _5518 + 292] = mem[t + _5518 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5518 + 260 len (32 * mem[_5518]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5518 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5518 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5518 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5518 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _4720 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4720] = 26
                                        mem[_4720 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4720 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5229 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5229] = 26
                                        mem[_5229 + 32] = 'SafeMath: division by zero'
                                        _5625 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5625]
                                        mem[_5625 + 32] = stor10
                                        require 1 < mem[_5625]
                                        mem[_5625 + 64] = stor11
                                        mem[_5625 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5625 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_5625 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5625 + 196] = this.address
                                        mem[_5625 + 228] = block.timestamp + 120
                                        mem[_5625 + 164] = 160
                                        mem[_5625 + 260] = mem[_5625]
                                        t = 0
                                        while t < 32 * mem[_5625]:
                                            mem[t + _5625 + 292] = mem[t + _5625 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5625 + 260 len (32 * mem[_5625]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5625 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5625 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5625 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5625 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4778 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4778] = 26
                                        mem[_4778 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4778 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5287 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5287] = 26
                                        mem[_5287 + 32] = 'SafeMath: division by zero'
                                        _5740 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5740]
                                        mem[_5740 + 32] = stor10
                                        require 1 < mem[_5740]
                                        mem[_5740 + 64] = stor11
                                        mem[_5740 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5740 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_5740 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_5740 + 196] = this.address
                                        mem[_5740 + 228] = block.timestamp + 120
                                        mem[_5740 + 164] = 160
                                        mem[_5740 + 260] = mem[_5740]
                                        t = 0
                                        while t < 32 * mem[_5740]:
                                            mem[t + _5740 + 292] = mem[t + _5740 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5740 + 260 len (32 * mem[_5740]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5740 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5740 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5740 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5740 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]):
                                    _5372 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5372] = 26
                                    mem[_5372 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5372 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5963 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5963] = 26
                                    mem[_5963 + 32] = 'SafeMath: division by zero'
                                    _6395 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6395]
                                    mem[_6395 + 32] = stor10
                                    require 1 < mem[_6395]
                                    mem[_6395 + 64] = stor11
                                    mem[_6395 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6395 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                    mem[_6395 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6395 + 196] = this.address
                                    mem[_6395 + 228] = block.timestamp + 120
                                    mem[_6395 + 164] = 160
                                    mem[_6395 + 260] = mem[_6395]
                                    s = 0
                                    while s < 32 * mem[_6395]:
                                        mem[s + _6395 + 292] = mem[s + _6395 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6395 + 260 len (32 * mem[_6395]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6395 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6395 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6395 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6395 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _5432 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5432] = 26
                                        mem[_5432 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5432 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6059 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6059] = 26
                                        mem[_6059 + 32] = 'SafeMath: division by zero'
                                        _6444 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6444]
                                        mem[_6444 + 32] = stor10
                                        require 1 < mem[_6444]
                                        mem[_6444 + 64] = stor11
                                        mem[_6444 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6444 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_6444 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6444 + 196] = this.address
                                        mem[_6444 + 228] = block.timestamp + 120
                                        mem[_6444 + 164] = 160
                                        mem[_6444 + 260] = mem[_6444]
                                        s = 0
                                        while s < 32 * mem[_6444]:
                                            mem[s + _6444 + 292] = mem[s + _6444 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6444 + 260 len (32 * mem[_6444]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6444 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6444 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6444 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6444 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5520 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5520] = 26
                                        mem[_5520 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5520 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6150 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6150] = 26
                                        mem[_6150 + 32] = 'SafeMath: division by zero'
                                        _6490 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6490]
                                        mem[_6490 + 32] = stor10
                                        require 1 < mem[_6490]
                                        mem[_6490 + 64] = stor11
                                        mem[_6490 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6490 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_6490 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_6490 + 196] = this.address
                                        mem[_6490 + 228] = block.timestamp + 120
                                        mem[_6490 + 164] = 160
                                        mem[_6490 + 260] = mem[_6490]
                                        s = 0
                                        while s < 32 * mem[_6490]:
                                            mem[s + _6490 + 292] = mem[s + _6490 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6490 + 260 len (32 * mem[_6490]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6490 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6490 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6490 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6490 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3975 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3975] = 26
                mem[_3975 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3975 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _4063 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4063] = 26
                    mem[_4063 + 32] = 'SafeMath: division by zero'
                    _4077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4077] = 26
                    mem[_4077 + 32] = 'SafeMath: division by zero'
                    _4091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4091] = 26
                    mem[_4091 + 32] = 'SafeMath: division by zero'
                    _4115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4115] = 30
                    mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                        _4130 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4130 + 68] = mem[idx + _4115 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4130 + 68] = mem[_4130 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4130 + -mem[64] + 100
                    if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            _4608 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4608] = 26
                            mem[_4608 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _4608 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _4946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4946] = 26
                            mem[_4946 + 32] = 'SafeMath: division by zero'
                            _5364 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_5364]
                            mem[_5364 + 32] = stor10
                            require 1 < mem[_5364]
                            mem[_5364 + 64] = stor11
                            mem[_5364 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_5364 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_5364 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_5364 + 196] = this.address
                            mem[_5364 + 228] = block.timestamp + 120
                            mem[_5364 + 164] = 160
                            mem[_5364 + 260] = mem[_5364]
                            t = 0
                            while t < 32 * mem[_5364]:
                                mem[t + _5364 + 292] = mem[t + _5364 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5364 + 260 len (32 * mem[_5364]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5364 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_5364 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_5364 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_5364 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _4634 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4634] = 26
                                mem[_4634 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4634 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5047 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5047] = 26
                                mem[_5047 + 32] = 'SafeMath: division by zero'
                                _5425 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5425]
                                mem[_5425 + 32] = stor10
                                require 1 < mem[_5425]
                                mem[_5425 + 64] = stor11
                                mem[_5425 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5425 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_5425 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5425 + 196] = this.address
                                mem[_5425 + 228] = block.timestamp + 120
                                mem[_5425 + 164] = 160
                                mem[_5425 + 260] = mem[_5425]
                                t = 0
                                while t < 32 * mem[_5425]:
                                    mem[t + _5425 + 292] = mem[t + _5425 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5425 + 260 len (32 * mem[_5425]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5425 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5425 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5425 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5425 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4667 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4667] = 26
                                mem[_4667 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4667 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5145 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5145] = 26
                                mem[_5145 + 32] = 'SafeMath: division by zero'
                                _5509 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5509]
                                mem[_5509 + 32] = stor10
                                require 1 < mem[_5509]
                                mem[_5509 + 64] = stor11
                                mem[_5509 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5509 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_5509 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_5509 + 196] = this.address
                                mem[_5509 + 228] = block.timestamp + 120
                                mem[_5509 + 164] = 160
                                mem[_5509 + 260] = mem[_5509]
                                t = 0
                                while t < 32 * mem[_5509]:
                                    mem[t + _5509 + 292] = mem[t + _5509 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5509 + 260 len (32 * mem[_5509]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5509 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5509 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5509 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5509 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                    call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            _5286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5286] = 26
                            mem[_5286 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5286 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _5737 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5737] = 26
                            mem[_5737 + 32] = 'SafeMath: division by zero'
                            _6284 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_6284]
                            mem[_6284 + 32] = stor10
                            require 1 < mem[_6284]
                            mem[_6284 + 64] = stor11
                            mem[_6284 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_6284 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_6284 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_6284 + 196] = this.address
                            mem[_6284 + 228] = block.timestamp + 120
                            mem[_6284 + 164] = 160
                            mem[_6284 + 260] = mem[_6284]
                            s = 0
                            while s < 32 * mem[_6284]:
                                mem[s + _6284 + 292] = mem[s + _6284 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6284 + 260 len (32 * mem[_6284]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6284 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_6284 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_6284 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_6284 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _5327 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5327] = 26
                                mem[_5327 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5327 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5849 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5849] = 26
                                mem[_5849 + 32] = 'SafeMath: division by zero'
                                _6340 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6340]
                                mem[_6340 + 32] = stor10
                                require 1 < mem[_6340]
                                mem[_6340 + 64] = stor11
                                mem[_6340 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6340 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_6340 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6340 + 196] = this.address
                                mem[_6340 + 228] = block.timestamp + 120
                                mem[_6340 + 164] = 160
                                mem[_6340 + 260] = mem[_6340]
                                s = 0
                                while s < 32 * mem[_6340]:
                                    mem[s + _6340 + 292] = mem[s + _6340 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6340 + 260 len (32 * mem[_6340]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6340 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6340 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6340 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6340 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5366 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5366] = 26
                                mem[_5366 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5366 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5955 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5955] = 26
                                mem[_5955 + 32] = 'SafeMath: division by zero'
                                _6390 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6390]
                                mem[_6390 + 32] = stor10
                                require 1 < mem[_6390]
                                mem[_6390 + 64] = stor11
                                mem[_6390 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6390 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_6390 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_6390 + 196] = this.address
                                mem[_6390 + 228] = block.timestamp + 120
                                mem[_6390 + 164] = 160
                                mem[_6390 + 260] = mem[_6390]
                                s = 0
                                while s < 32 * mem[_6390]:
                                    mem[s + _6390 + 292] = mem[s + _6390 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6390 + 260 len (32 * mem[_6390]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6390 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6390 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6390 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6390 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4067 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4067] = 26
                    mem[_4067 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        _4083 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4083] = 26
                        mem[_4083 + 32] = 'SafeMath: division by zero'
                        _4101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4101] = 26
                        mem[_4101 + 32] = 'SafeMath: division by zero'
                        _4119 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4119] = 30
                        mem[_4119 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                            _4146 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4146 + 68] = mem[idx + _4119 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4146 + 68] = mem[_4146 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4146 + -mem[64] + 100
                        if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _4632 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4632] = 26
                                mem[_4632 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4632 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5042 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5042] = 26
                                mem[_5042 + 32] = 'SafeMath: division by zero'
                                _5419 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5419]
                                mem[_5419 + 32] = stor10
                                require 1 < mem[_5419]
                                mem[_5419 + 64] = stor11
                                mem[_5419 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5419 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_5419 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5419 + 196] = this.address
                                mem[_5419 + 228] = block.timestamp + 120
                                mem[_5419 + 164] = 160
                                mem[_5419 + 260] = mem[_5419]
                                t = 0
                                while t < 32 * mem[_5419]:
                                    mem[t + _5419 + 292] = mem[t + _5419 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5419 + 260 len (32 * mem[_5419]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5419 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5419 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5419 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5419 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _4666 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4666] = 26
                                    mem[_4666 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4666 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5141 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5141] = 26
                                    mem[_5141 + 32] = 'SafeMath: division by zero'
                                    _5502 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5502]
                                    mem[_5502 + 32] = stor10
                                    require 1 < mem[_5502]
                                    mem[_5502 + 64] = stor11
                                    mem[_5502 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5502 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_5502 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5502 + 196] = this.address
                                    mem[_5502 + 228] = block.timestamp + 120
                                    mem[_5502 + 164] = 160
                                    mem[_5502 + 260] = mem[_5502]
                                    t = 0
                                    while t < 32 * mem[_5502]:
                                        mem[t + _5502 + 292] = mem[t + _5502 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5502 + 260 len (32 * mem[_5502]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5502 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5502 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5502 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5502 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4712 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4712] = 26
                                    mem[_4712 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4712 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5222 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5222] = 26
                                    mem[_5222 + 32] = 'SafeMath: division by zero'
                                    _5610 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5610]
                                    mem[_5610 + 32] = stor10
                                    require 1 < mem[_5610]
                                    mem[_5610 + 64] = stor11
                                    mem[_5610 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5610 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_5610 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_5610 + 196] = this.address
                                    mem[_5610 + 228] = block.timestamp + 120
                                    mem[_5610 + 164] = 160
                                    mem[_5610 + 260] = mem[_5610]
                                    t = 0
                                    while t < 32 * mem[_5610]:
                                        mem[t + _5610 + 292] = mem[t + _5610 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5610 + 260 len (32 * mem[_5610]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5610 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5610 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5610 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5610 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s
                            continue 
                        mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _5326 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5326] = 26
                                mem[_5326 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5326 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5844 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5844] = 26
                                mem[_5844 + 32] = 'SafeMath: division by zero'
                                _6338 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6338]
                                mem[_6338 + 32] = stor10
                                require 1 < mem[_6338]
                                mem[_6338 + 64] = stor11
                                mem[_6338 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6338 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_6338 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6338 + 196] = this.address
                                mem[_6338 + 228] = block.timestamp + 120
                                mem[_6338 + 164] = 160
                                mem[_6338 + 260] = mem[_6338]
                                s = 0
                                while s < 32 * mem[_6338]:
                                    mem[s + _6338 + 292] = mem[s + _6338 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6338 + 260 len (32 * mem[_6338]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6338 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6338 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6338 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6338 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _5363 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5363] = 26
                                    mem[_5363 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5363 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5948 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5948] = 26
                                    mem[_5948 + 32] = 'SafeMath: division by zero'
                                    _6387 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6387]
                                    mem[_6387 + 32] = stor10
                                    require 1 < mem[_6387]
                                    mem[_6387 + 64] = stor11
                                    mem[_6387 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6387 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_6387 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6387 + 196] = this.address
                                    mem[_6387 + 228] = block.timestamp + 120
                                    mem[_6387 + 164] = 160
                                    mem[_6387 + 260] = mem[_6387]
                                    s = 0
                                    while s < 32 * mem[_6387]:
                                        mem[s + _6387 + 292] = mem[s + _6387 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6387 + 260 len (32 * mem[_6387]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6387 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6387 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6387 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6387 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5421 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5421] = 26
                                    mem[_5421 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5421 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _6049 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6049] = 26
                                    mem[_6049 + 32] = 'SafeMath: division by zero'
                                    _6438 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6438]
                                    mem[_6438 + 32] = stor10
                                    require 1 < mem[_6438]
                                    mem[_6438 + 64] = stor11
                                    mem[_6438 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6438 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_6438 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_6438 + 196] = this.address
                                    mem[_6438 + 228] = block.timestamp + 120
                                    mem[_6438 + 164] = 160
                                    mem[_6438 + 260] = mem[_6438]
                                    s = 0
                                    while s < 32 * mem[_6438]:
                                        mem[s + _6438 + 292] = mem[s + _6438 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6438 + 260 len (32 * mem[_6438]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6438 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6438 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6438 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6438 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 750000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4087 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4087] = 26
                        mem[_4087 + 32] = 'SafeMath: division by zero'
                        if not 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6:
                            _4107 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4107] = 26
                            mem[_4107 + 32] = 'SafeMath: division by zero'
                            _4129 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4129] = 30
                            mem[_4129 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                                _4161 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4161 + 68] = mem[idx + _4129 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4161 + 68] = mem[_4161 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4161 + -mem[64] + 100
                            if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _4664 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4664] = 26
                                    mem[_4664 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4664 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5136 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5136] = 26
                                    mem[_5136 + 32] = 'SafeMath: division by zero'
                                    _5496 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5496]
                                    mem[_5496 + 32] = stor10
                                    require 1 < mem[_5496]
                                    mem[_5496 + 64] = stor11
                                    mem[_5496 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5496 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_5496 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5496 + 196] = this.address
                                    mem[_5496 + 228] = block.timestamp + 120
                                    mem[_5496 + 164] = 160
                                    mem[_5496 + 260] = mem[_5496]
                                    t = 0
                                    while t < 32 * mem[_5496]:
                                        mem[t + _5496 + 292] = mem[t + _5496 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5496 + 260 len (32 * mem[_5496]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5496 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5496 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5496 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5496 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                        _4711 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4711] = 26
                                        mem[_4711 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4711 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5218 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5218] = 26
                                        mem[_5218 + 32] = 'SafeMath: division by zero'
                                        _5603 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5603]
                                        mem[_5603 + 32] = stor10
                                        require 1 < mem[_5603]
                                        mem[_5603 + 64] = stor11
                                        mem[_5603 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5603 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_5603 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5603 + 196] = this.address
                                        mem[_5603 + 228] = block.timestamp + 120
                                        mem[_5603 + 164] = 160
                                        mem[_5603 + 260] = mem[_5603]
                                        t = 0
                                        while t < 32 * mem[_5603]:
                                            mem[t + _5603 + 292] = mem[t + _5603 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5603 + 260 len (32 * mem[_5603]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5603 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5603 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5603 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5603 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4764 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4764] = 26
                                        mem[_4764 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4764 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5279 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5279] = 26
                                        mem[_5279 + 32] = 'SafeMath: division by zero'
                                        _5718 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5718]
                                        mem[_5718 + 32] = stor10
                                        require 1 < mem[_5718]
                                        mem[_5718 + 64] = stor11
                                        mem[_5718 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5718 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_5718 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_5718 + 196] = this.address
                                        mem[_5718 + 228] = block.timestamp + 120
                                        mem[_5718 + 164] = 160
                                        mem[_5718 + 260] = mem[_5718]
                                        t = 0
                                        while t < 32 * mem[_5718]:
                                            mem[t + _5718 + 292] = mem[t + _5718 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5718 + 260 len (32 * mem[_5718]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5718 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5718 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5718 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5718 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _5362 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5362] = 26
                                    mem[_5362 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5362 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5943 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5943] = 26
                                    mem[_5943 + 32] = 'SafeMath: division by zero'
                                    _6385 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6385]
                                    mem[_6385 + 32] = stor10
                                    require 1 < mem[_6385]
                                    mem[_6385 + 64] = stor11
                                    mem[_6385 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6385 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_6385 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6385 + 196] = this.address
                                    mem[_6385 + 228] = block.timestamp + 120
                                    mem[_6385 + 164] = 160
                                    mem[_6385 + 260] = mem[_6385]
                                    s = 0
                                    while s < 32 * mem[_6385]:
                                        mem[s + _6385 + 292] = mem[s + _6385 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6385 + 260 len (32 * mem[_6385]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6385 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6385 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6385 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6385 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                        _5418 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5418] = 26
                                        mem[_5418 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5418 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6042 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6042] = 26
                                        mem[_6042 + 32] = 'SafeMath: division by zero'
                                        _6435 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6435]
                                        mem[_6435 + 32] = stor10
                                        require 1 < mem[_6435]
                                        mem[_6435 + 64] = stor11
                                        mem[_6435 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6435 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_6435 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6435 + 196] = this.address
                                        mem[_6435 + 228] = block.timestamp + 120
                                        mem[_6435 + 164] = 160
                                        mem[_6435 + 260] = mem[_6435]
                                        s = 0
                                        while s < 32 * mem[_6435]:
                                            mem[s + _6435 + 292] = mem[s + _6435 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6435 + 260 len (32 * mem[_6435]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6435 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6435 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6435 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6435 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5498 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5498] = 26
                                        mem[_5498 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5498 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6134 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6134] = 26
                                        mem[_6134 + 32] = 'SafeMath: division by zero'
                                        _6482 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6482]
                                        mem[_6482 + 32] = stor10
                                        require 1 < mem[_6482]
                                        mem[_6482 + 64] = stor11
                                        mem[_6482 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6482 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_6482 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_6482 + 196] = this.address
                                        mem[_6482 + 228] = block.timestamp + 120
                                        mem[_6482 + 164] = 160
                                        mem[_6482 + 260] = mem[_6482]
                                        s = 0
                                        while s < 32 * mem[_6482]:
                                            mem[s + _6482 + 292] = mem[s + _6482 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6482 + 260 len (32 * mem[_6482]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6482 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6482 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6482 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6482 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 != sub_39bb9c24:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4111 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4111] = 26
                            mem[_4111 + 32] = 'SafeMath: division by zero'
                            _4145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4145] = 30
                            mem[_4145 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6:
                                _4181 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4181 + 68] = mem[idx + _4145 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4181 + 68] = mem[_4181 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4181 + -mem[64] + 100
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                    _4709 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4709] = 26
                                    mem[_4709 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4709 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5213 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5213] = 26
                                    mem[_5213 + 32] = 'SafeMath: division by zero'
                                    _5597 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5597]
                                    mem[_5597 + 32] = stor10
                                    require 1 < mem[_5597]
                                    mem[_5597 + 64] = stor11
                                    mem[_5597 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5597 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                    mem[_5597 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5597 + 196] = this.address
                                    mem[_5597 + 228] = block.timestamp + 120
                                    mem[_5597 + 164] = 160
                                    mem[_5597 + 260] = mem[_5597]
                                    t = 0
                                    while t < 32 * mem[_5597]:
                                        mem[t + _5597 + 292] = mem[t + _5597 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5597 + 260 len (32 * mem[_5597]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5597 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5597 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5597 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5597 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _4763 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4763] = 26
                                        mem[_4763 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4763 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5275 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5275] = 26
                                        mem[_5275 + 32] = 'SafeMath: division by zero'
                                        _5711 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5711]
                                        mem[_5711 + 32] = stor10
                                        require 1 < mem[_5711]
                                        mem[_5711 + 64] = stor11
                                        mem[_5711 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5711 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_5711 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5711 + 196] = this.address
                                        mem[_5711 + 228] = block.timestamp + 120
                                        mem[_5711 + 164] = 160
                                        mem[_5711 + 260] = mem[_5711]
                                        t = 0
                                        while t < 32 * mem[_5711]:
                                            mem[t + _5711 + 292] = mem[t + _5711 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5711 + 260 len (32 * mem[_5711]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5711 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5711 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5711 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5711 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4835 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4835] = 26
                                        mem[_4835 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4835 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5319 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5319] = 26
                                        mem[_5319 + 32] = 'SafeMath: division by zero'
                                        _5825 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5825]
                                        mem[_5825 + 32] = stor10
                                        require 1 < mem[_5825]
                                        mem[_5825 + 64] = stor11
                                        mem[_5825 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5825 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_5825 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_5825 + 196] = this.address
                                        mem[_5825 + 228] = block.timestamp + 120
                                        mem[_5825 + 164] = 160
                                        mem[_5825 + 260] = mem[_5825]
                                        t = 0
                                        while t < 32 * mem[_5825]:
                                            mem[t + _5825 + 292] = mem[t + _5825 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5825 + 260 len (32 * mem[_5825]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5825 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5825 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5825 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5825 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                    _5417 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5417] = 26
                                    mem[_5417 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5417 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _6037 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6037] = 26
                                    mem[_6037 + 32] = 'SafeMath: division by zero'
                                    _6433 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6433]
                                    mem[_6433 + 32] = stor10
                                    require 1 < mem[_6433]
                                    mem[_6433 + 64] = stor11
                                    mem[_6433 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6433 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                    mem[_6433 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6433 + 196] = this.address
                                    mem[_6433 + 228] = block.timestamp + 120
                                    mem[_6433 + 164] = 160
                                    mem[_6433 + 260] = mem[_6433]
                                    s = 0
                                    while s < 32 * mem[_6433]:
                                        mem[s + _6433 + 292] = mem[s + _6433 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6433 + 260 len (32 * mem[_6433]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6433 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6433 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6433 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6433 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _5495 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5495] = 26
                                        mem[_5495 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5495 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6127 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6127] = 26
                                        mem[_6127 + 32] = 'SafeMath: division by zero'
                                        _6479 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6479]
                                        mem[_6479 + 32] = stor10
                                        require 1 < mem[_6479]
                                        mem[_6479 + 64] = stor11
                                        mem[_6479 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6479 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_6479 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6479 + 196] = this.address
                                        mem[_6479 + 228] = block.timestamp + 120
                                        mem[_6479 + 164] = 160
                                        mem[_6479 + 260] = mem[_6479]
                                        s = 0
                                        while s < 32 * mem[_6479]:
                                            mem[s + _6479 + 292] = mem[s + _6479 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6479 + 260 len (32 * mem[_6479]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6479 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6479 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6479 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6479 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5599 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5599] = 26
                                        mem[_5599 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5599 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6208 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6208] = 26
                                        mem[_6208 + 32] = 'SafeMath: division by zero'
                                        _6523 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6523]
                                        mem[_6523 + 32] = stor10
                                        require 1 < mem[_6523]
                                        mem[_6523 + 64] = stor11
                                        mem[_6523 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6523 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_6523 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_6523 + 196] = this.address
                                        mem[_6523 + 228] = block.timestamp + 120
                                        mem[_6523 + 164] = 160
                                        mem[_6523 + 260] = mem[_6523]
                                        s = 0
                                        while s < 32 * mem[_6523]:
                                            mem[s + _6523 + 292] = mem[s + _6523 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6523 + 260 len (32 * mem[_6523]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6523 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6523 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6523 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6523 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = 1
            continue 
    else:
        require msg.sender == owner
        idx = 0
        s = 0
        while idx < 10:
            if s:
                idx = idx + 1
                s = s
                continue 
            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor11)
            staticcall stor11.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor10)
            staticcall stor10.0x70a08231 with:
                    gas gas_remaining wei
                   args stor12
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                _3974 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3974] = 26
                mem[_3974 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3974 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _4062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4062] = 26
                    mem[_4062 + 32] = 'SafeMath: division by zero'
                    _4074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4074] = 26
                    mem[_4074 + 32] = 'SafeMath: division by zero'
                    _4090 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4090] = 26
                    mem[_4090 + 32] = 'SafeMath: division by zero'
                    _4114 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4114] = 30
                    mem[_4114 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / ext_call.return_data[0] > 0:
                        _4126 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4126 + 68] = mem[idx + _4114 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4126 + 68] = mem[_4126 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4126 + -mem[64] + 100
                    if -0 / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -0 / ext_call.return_data[0]:
                            _4601 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4601] = 26
                            mem[_4601 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _4601 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _4922 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4922] = 26
                            mem[_4922 + 32] = 'SafeMath: division by zero'
                            _5353 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_5353]
                            mem[_5353 + 32] = stor10
                            require 1 < mem[_5353]
                            mem[_5353 + 64] = stor11
                            mem[_5353 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_5353 + 100] = -0 / ext_call.return_data[0]
                            mem[_5353 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_5353 + 196] = this.address
                            mem[_5353 + 228] = block.timestamp + 120
                            mem[_5353 + 164] = 160
                            mem[_5353 + 260] = mem[_5353]
                            t = 0
                            while t < 32 * mem[_5353]:
                                mem[t + _5353 + 292] = mem[t + _5353 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5353 + 260 len (32 * mem[_5353]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5353 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_5353 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_5353 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_5353 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                _4628 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4628] = 26
                                mem[_4628 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4628 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5021 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5021] = 26
                                mem[_5021 + 32] = 'SafeMath: division by zero'
                                _5408 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5408]
                                mem[_5408 + 32] = stor10
                                require 1 < mem[_5408]
                                mem[_5408 + 64] = stor11
                                mem[_5408 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5408 + 100] = -0 / ext_call.return_data[0]
                                mem[_5408 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5408 + 196] = this.address
                                mem[_5408 + 228] = block.timestamp + 120
                                mem[_5408 + 164] = 160
                                mem[_5408 + 260] = mem[_5408]
                                t = 0
                                while t < 32 * mem[_5408]:
                                    mem[t + _5408 + 292] = mem[t + _5408 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5408 + 260 len (32 * mem[_5408]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5408 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5408 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5408 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5408 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4657 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4657] = 26
                                mem[_4657 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4657 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5121 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5121] = 26
                                mem[_5121 + 32] = 'SafeMath: division by zero'
                                _5486 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5486]
                                mem[_5486 + 32] = stor10
                                require 1 < mem[_5486]
                                mem[_5486 + 64] = stor11
                                mem[_5486 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5486 + 100] = -0 / ext_call.return_data[0]
                                mem[_5486 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_5486 + 196] = this.address
                                mem[_5486 + 228] = block.timestamp + 120
                                mem[_5486 + 164] = 160
                                mem[_5486 + 260] = mem[_5486]
                                t = 0
                                while t < 32 * mem[_5486]:
                                    mem[t + _5486 + 292] = mem[t + _5486 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5486 + 260 len (32 * mem[_5486]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5486 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5486 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5486 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5486 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                    call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if -0 / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(0 / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -0 / ext_call.return_data[0]:
                            _5272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5272] = 26
                            mem[_5272 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5272 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _5708 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5708] = 26
                            mem[_5708 + 32] = 'SafeMath: division by zero'
                            _6269 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_6269]
                            mem[_6269 + 32] = stor10
                            require 1 < mem[_6269]
                            mem[_6269 + 64] = stor11
                            mem[_6269 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_6269 + 100] = -0 / ext_call.return_data[0]
                            mem[_6269 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_6269 + 196] = this.address
                            mem[_6269 + 228] = block.timestamp + 120
                            mem[_6269 + 164] = 160
                            mem[_6269 + 260] = mem[_6269]
                            s = 0
                            while s < 32 * mem[_6269]:
                                mem[s + _6269 + 292] = mem[s + _6269 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6269 + 260 len (32 * mem[_6269]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6269 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_6269 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_6269 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_6269 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                _5318 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5318] = 26
                                mem[_5318 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5318 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5821 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5821] = 26
                                mem[_5821 + 32] = 'SafeMath: division by zero'
                                _6326 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6326]
                                mem[_6326 + 32] = stor10
                                require 1 < mem[_6326]
                                mem[_6326 + 64] = stor11
                                mem[_6326 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6326 + 100] = -0 / ext_call.return_data[0]
                                mem[_6326 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6326 + 196] = this.address
                                mem[_6326 + 228] = block.timestamp + 120
                                mem[_6326 + 164] = 160
                                mem[_6326 + 260] = mem[_6326]
                                s = 0
                                while s < 32 * mem[_6326]:
                                    mem[s + _6326 + 292] = mem[s + _6326 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6326 + 260 len (32 * mem[_6326]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6326 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6326 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6326 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6326 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5355 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5355] = 26
                                mem[_5355 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5355 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5929 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5929] = 26
                                mem[_5929 + 32] = 'SafeMath: division by zero'
                                _6378 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6378]
                                mem[_6378 + 32] = stor10
                                require 1 < mem[_6378]
                                mem[_6378 + 64] = stor11
                                mem[_6378 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6378 + 100] = -0 / ext_call.return_data[0]
                                mem[_6378 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_6378 + 196] = this.address
                                mem[_6378 + 228] = block.timestamp + 120
                                mem[_6378 + 164] = 160
                                mem[_6378 + 260] = mem[_6378]
                                s = 0
                                while s < 32 * mem[_6378]:
                                    mem[s + _6378 + 292] = mem[s + _6378 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6378 + 260 len (32 * mem[_6378]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6378 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6378 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6378 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6378 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4066 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4066] = 26
                    mem[_4066 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        _4082 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4082] = 26
                        mem[_4082 + 32] = 'SafeMath: division by zero'
                        _4098 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4098] = 26
                        mem[_4098 + 32] = 'SafeMath: division by zero'
                        _4118 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4118] = 30
                        mem[_4118 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / ext_call.return_data[0] > 0:
                            _4142 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4142 + 68] = mem[idx + _4118 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4142 + 68] = mem[_4142 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4142 + -mem[64] + 100
                        if -0 / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(0 / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -0 / ext_call.return_data[0]:
                                _4626 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4626] = 26
                                mem[_4626 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4626 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5016 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5016] = 26
                                mem[_5016 + 32] = 'SafeMath: division by zero'
                                _5402 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5402]
                                mem[_5402 + 32] = stor10
                                require 1 < mem[_5402]
                                mem[_5402 + 64] = stor11
                                mem[_5402 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5402 + 100] = -0 / ext_call.return_data[0]
                                mem[_5402 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5402 + 196] = this.address
                                mem[_5402 + 228] = block.timestamp + 120
                                mem[_5402 + 164] = 160
                                mem[_5402 + 260] = mem[_5402]
                                t = 0
                                while t < 32 * mem[_5402]:
                                    mem[t + _5402 + 292] = mem[t + _5402 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5402 + 260 len (32 * mem[_5402]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5402 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5402 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5402 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5402 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                    _4656 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4656] = 26
                                    mem[_4656 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4656 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5117 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5117] = 26
                                    mem[_5117 + 32] = 'SafeMath: division by zero'
                                    _5479 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5479]
                                    mem[_5479 + 32] = stor10
                                    require 1 < mem[_5479]
                                    mem[_5479 + 64] = stor11
                                    mem[_5479 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5479 + 100] = -0 / ext_call.return_data[0]
                                    mem[_5479 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5479 + 196] = this.address
                                    mem[_5479 + 228] = block.timestamp + 120
                                    mem[_5479 + 164] = 160
                                    mem[_5479 + 260] = mem[_5479]
                                    t = 0
                                    while t < 32 * mem[_5479]:
                                        mem[t + _5479 + 292] = mem[t + _5479 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5479 + 260 len (32 * mem[_5479]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5479 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5479 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5479 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5479 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4699 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4699] = 26
                                    mem[_4699 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4699 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5204 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5204] = 26
                                    mem[_5204 + 32] = 'SafeMath: division by zero'
                                    _5582 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5582]
                                    mem[_5582 + 32] = stor10
                                    require 1 < mem[_5582]
                                    mem[_5582 + 64] = stor11
                                    mem[_5582 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5582 + 100] = -0 / ext_call.return_data[0]
                                    mem[_5582 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_5582 + 196] = this.address
                                    mem[_5582 + 228] = block.timestamp + 120
                                    mem[_5582 + 164] = 160
                                    mem[_5582 + 260] = mem[_5582]
                                    t = 0
                                    while t < 32 * mem[_5582]:
                                        mem[t + _5582 + 292] = mem[t + _5582 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5582 + 260 len (32 * mem[_5582]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5582 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5582 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5582 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5582 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s
                            continue 
                        mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -0 / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(0 / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -0 / ext_call.return_data[0]:
                                _5317 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5317] = 26
                                mem[_5317 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5317 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5816 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5816] = 26
                                mem[_5816 + 32] = 'SafeMath: division by zero'
                                _6324 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6324]
                                mem[_6324 + 32] = stor10
                                require 1 < mem[_6324]
                                mem[_6324 + 64] = stor11
                                mem[_6324 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6324 + 100] = -0 / ext_call.return_data[0]
                                mem[_6324 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6324 + 196] = this.address
                                mem[_6324 + 228] = block.timestamp + 120
                                mem[_6324 + 164] = 160
                                mem[_6324 + 260] = mem[_6324]
                                s = 0
                                while s < 32 * mem[_6324]:
                                    mem[s + _6324 + 292] = mem[s + _6324 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6324 + 260 len (32 * mem[_6324]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6324 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6324 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6324 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6324 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                    _5352 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5352] = 26
                                    mem[_5352 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5352 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5922 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5922] = 26
                                    mem[_5922 + 32] = 'SafeMath: division by zero'
                                    _6375 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6375]
                                    mem[_6375 + 32] = stor10
                                    require 1 < mem[_6375]
                                    mem[_6375 + 64] = stor11
                                    mem[_6375 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6375 + 100] = -0 / ext_call.return_data[0]
                                    mem[_6375 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6375 + 196] = this.address
                                    mem[_6375 + 228] = block.timestamp + 120
                                    mem[_6375 + 164] = 160
                                    mem[_6375 + 260] = mem[_6375]
                                    s = 0
                                    while s < 32 * mem[_6375]:
                                        mem[s + _6375 + 292] = mem[s + _6375 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6375 + 260 len (32 * mem[_6375]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6375 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6375 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6375 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6375 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5404 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5404] = 26
                                    mem[_5404 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5404 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _6025 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6025] = 26
                                    mem[_6025 + 32] = 'SafeMath: division by zero'
                                    _6425 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6425]
                                    mem[_6425 + 32] = stor10
                                    require 1 < mem[_6425]
                                    mem[_6425 + 64] = stor11
                                    mem[_6425 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6425 + 100] = -0 / ext_call.return_data[0]
                                    mem[_6425 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_6425 + 196] = this.address
                                    mem[_6425 + 228] = block.timestamp + 120
                                    mem[_6425 + 164] = 160
                                    mem[_6425 + 260] = mem[_6425]
                                    s = 0
                                    while s < 32 * mem[_6425]:
                                        mem[s + _6425 + 292] = mem[s + _6425 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6425 + 260 len (32 * mem[_6425]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6425 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6425 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6425 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6425 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 750000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4086 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4086] = 26
                        mem[_4086 + 32] = 'SafeMath: division by zero'
                        if not 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6:
                            _4106 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4106] = 26
                            mem[_4106 + 32] = 'SafeMath: division by zero'
                            _4125 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4125] = 30
                            mem[_4125 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / ext_call.return_data[0] > 0:
                                _4157 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4157 + 68] = mem[idx + _4125 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4157 + 68] = mem[_4157 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4157 + -mem[64] + 100
                            if -0 / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -0 / ext_call.return_data[0]:
                                    _4654 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4654] = 26
                                    mem[_4654 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4654 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5112 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5112] = 26
                                    mem[_5112 + 32] = 'SafeMath: division by zero'
                                    _5473 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5473]
                                    mem[_5473 + 32] = stor10
                                    require 1 < mem[_5473]
                                    mem[_5473 + 64] = stor11
                                    mem[_5473 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5473 + 100] = -0 / ext_call.return_data[0]
                                    mem[_5473 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5473 + 196] = this.address
                                    mem[_5473 + 228] = block.timestamp + 120
                                    mem[_5473 + 164] = 160
                                    mem[_5473 + 260] = mem[_5473]
                                    t = 0
                                    while t < 32 * mem[_5473]:
                                        mem[t + _5473 + 292] = mem[t + _5473 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5473 + 260 len (32 * mem[_5473]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5473 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5473 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5473 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5473 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                        _4698 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4698] = 26
                                        mem[_4698 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4698 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5200 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5200] = 26
                                        mem[_5200 + 32] = 'SafeMath: division by zero'
                                        _5575 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5575]
                                        mem[_5575 + 32] = stor10
                                        require 1 < mem[_5575]
                                        mem[_5575 + 64] = stor11
                                        mem[_5575 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5575 + 100] = -0 / ext_call.return_data[0]
                                        mem[_5575 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5575 + 196] = this.address
                                        mem[_5575 + 228] = block.timestamp + 120
                                        mem[_5575 + 164] = 160
                                        mem[_5575 + 260] = mem[_5575]
                                        t = 0
                                        while t < 32 * mem[_5575]:
                                            mem[t + _5575 + 292] = mem[t + _5575 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5575 + 260 len (32 * mem[_5575]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5575 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5575 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5575 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5575 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4749 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4749] = 26
                                        mem[_4749 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4749 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5265 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5265] = 26
                                        mem[_5265 + 32] = 'SafeMath: division by zero'
                                        _5689 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5689]
                                        mem[_5689 + 32] = stor10
                                        require 1 < mem[_5689]
                                        mem[_5689 + 64] = stor11
                                        mem[_5689 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5689 + 100] = -0 / ext_call.return_data[0]
                                        mem[_5689 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_5689 + 196] = this.address
                                        mem[_5689 + 228] = block.timestamp + 120
                                        mem[_5689 + 164] = 160
                                        mem[_5689 + 260] = mem[_5689]
                                        t = 0
                                        while t < 32 * mem[_5689]:
                                            mem[t + _5689 + 292] = mem[t + _5689 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5689 + 260 len (32 * mem[_5689]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5689 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5689 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5689 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5689 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -0 / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -0 / ext_call.return_data[0]:
                                    _5351 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5351] = 26
                                    mem[_5351 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5351 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5917 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5917] = 26
                                    mem[_5917 + 32] = 'SafeMath: division by zero'
                                    _6373 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6373]
                                    mem[_6373 + 32] = stor10
                                    require 1 < mem[_6373]
                                    mem[_6373 + 64] = stor11
                                    mem[_6373 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6373 + 100] = -0 / ext_call.return_data[0]
                                    mem[_6373 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6373 + 196] = this.address
                                    mem[_6373 + 228] = block.timestamp + 120
                                    mem[_6373 + 164] = 160
                                    mem[_6373 + 260] = mem[_6373]
                                    s = 0
                                    while s < 32 * mem[_6373]:
                                        mem[s + _6373 + 292] = mem[s + _6373 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6373 + 260 len (32 * mem[_6373]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6373 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6373 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6373 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6373 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -0 / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0]:
                                        _5401 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5401] = 26
                                        mem[_5401 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5401 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6018 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6018] = 26
                                        mem[_6018 + 32] = 'SafeMath: division by zero'
                                        _6422 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6422]
                                        mem[_6422 + 32] = stor10
                                        require 1 < mem[_6422]
                                        mem[_6422 + 64] = stor11
                                        mem[_6422 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6422 + 100] = -0 / ext_call.return_data[0]
                                        mem[_6422 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6422 + 196] = this.address
                                        mem[_6422 + 228] = block.timestamp + 120
                                        mem[_6422 + 164] = 160
                                        mem[_6422 + 260] = mem[_6422]
                                        s = 0
                                        while s < 32 * mem[_6422]:
                                            mem[s + _6422 + 292] = mem[s + _6422 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6422 + 260 len (32 * mem[_6422]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6422 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6422 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6422 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6422 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / -1 * ext_call.return_data[0] * 0 / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5475 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5475] = 26
                                        mem[_5475 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5475 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6112 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6112] = 26
                                        mem[_6112 + 32] = 'SafeMath: division by zero'
                                        _6471 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6471]
                                        mem[_6471 + 32] = stor10
                                        require 1 < mem[_6471]
                                        mem[_6471 + 64] = stor11
                                        mem[_6471 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6471 + 100] = -0 / ext_call.return_data[0]
                                        mem[_6471 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_6471 + 196] = this.address
                                        mem[_6471 + 228] = block.timestamp + 120
                                        mem[_6471 + 164] = 160
                                        mem[_6471 + 260] = mem[_6471]
                                        s = 0
                                        while s < 32 * mem[_6471]:
                                            mem[s + _6471 + 292] = mem[s + _6471 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -0 / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6471 + 260 len (32 * mem[_6471]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6471 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6471 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6471 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6471 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 != sub_39bb9c24:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4110 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4110] = 26
                            mem[_4110 + 32] = 'SafeMath: division by zero'
                            _4141 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4141] = 30
                            mem[_4141 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / ext_call.return_data[0] > sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6:
                                _4175 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4175 + 68] = mem[idx + _4141 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4175 + 68] = mem[_4175 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4175 + -mem[64] + 100
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]):
                                    _4696 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4696] = 26
                                    mem[_4696 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4696 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5195 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5195] = 26
                                    mem[_5195 + 32] = 'SafeMath: division by zero'
                                    _5569 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5569]
                                    mem[_5569 + 32] = stor10
                                    require 1 < mem[_5569]
                                    mem[_5569 + 64] = stor11
                                    mem[_5569 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5569 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                    mem[_5569 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5569 + 196] = this.address
                                    mem[_5569 + 228] = block.timestamp + 120
                                    mem[_5569 + 164] = 160
                                    mem[_5569 + 260] = mem[_5569]
                                    t = 0
                                    while t < 32 * mem[_5569]:
                                        mem[t + _5569 + 292] = mem[t + _5569 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5569 + 260 len (32 * mem[_5569]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5569 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5569 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5569 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5569 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _4748 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4748] = 26
                                        mem[_4748 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4748 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5261 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5261] = 26
                                        mem[_5261 + 32] = 'SafeMath: division by zero'
                                        _5682 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5682]
                                        mem[_5682 + 32] = stor10
                                        require 1 < mem[_5682]
                                        mem[_5682 + 64] = stor11
                                        mem[_5682 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5682 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_5682 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5682 + 196] = this.address
                                        mem[_5682 + 228] = block.timestamp + 120
                                        mem[_5682 + 164] = 160
                                        mem[_5682 + 260] = mem[_5682]
                                        t = 0
                                        while t < 32 * mem[_5682]:
                                            mem[t + _5682 + 292] = mem[t + _5682 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5682 + 260 len (32 * mem[_5682]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5682 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5682 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5682 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5682 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4814 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4814] = 26
                                        mem[_4814 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4814 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5310 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5310] = 26
                                        mem[_5310 + 32] = 'SafeMath: division by zero'
                                        _5797 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5797]
                                        mem[_5797 + 32] = stor10
                                        require 1 < mem[_5797]
                                        mem[_5797 + 64] = stor11
                                        mem[_5797 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5797 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_5797 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_5797 + 196] = this.address
                                        mem[_5797 + 228] = block.timestamp + 120
                                        mem[_5797 + 164] = 160
                                        mem[_5797 + 260] = mem[_5797]
                                        t = 0
                                        while t < 32 * mem[_5797]:
                                            mem[t + _5797 + 292] = mem[t + _5797 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5797 + 260 len (32 * mem[_5797]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5797 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5797 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5797 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5797 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]):
                                    _5400 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5400] = 26
                                    mem[_5400 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5400 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _6013 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6013] = 26
                                    mem[_6013 + 32] = 'SafeMath: division by zero'
                                    _6420 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6420]
                                    mem[_6420 + 32] = stor10
                                    require 1 < mem[_6420]
                                    mem[_6420 + 64] = stor11
                                    mem[_6420 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6420 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                    mem[_6420 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6420 + 196] = this.address
                                    mem[_6420 + 228] = block.timestamp + 120
                                    mem[_6420 + 164] = 160
                                    mem[_6420 + 260] = mem[_6420]
                                    s = 0
                                    while s < 32 * mem[_6420]:
                                        mem[s + _6420 + 292] = mem[s + _6420 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6420 + 260 len (32 * mem[_6420]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6420 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6420 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6420 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6420 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _5472 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5472] = 26
                                        mem[_5472 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5472 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6105 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6105] = 26
                                        mem[_6105 + 32] = 'SafeMath: division by zero'
                                        _6468 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6468]
                                        mem[_6468 + 32] = stor10
                                        require 1 < mem[_6468]
                                        mem[_6468 + 64] = stor11
                                        mem[_6468 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6468 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_6468 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6468 + 196] = this.address
                                        mem[_6468 + 228] = block.timestamp + 120
                                        mem[_6468 + 164] = 160
                                        mem[_6468 + 260] = mem[_6468]
                                        s = 0
                                        while s < 32 * mem[_6468]:
                                            mem[s + _6468 + 292] = mem[s + _6468 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6468 + 260 len (32 * mem[_6468]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6468 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6468 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6468 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6468 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (0 / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5571 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5571] = 26
                                        mem[_5571 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5571 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6190 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6190] = 26
                                        mem[_6190 + 32] = 'SafeMath: division by zero'
                                        _6512 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6512]
                                        mem[_6512 + 32] = stor10
                                        require 1 < mem[_6512]
                                        mem[_6512 + 64] = stor11
                                        mem[_6512 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6512 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0])
                                        mem[_6512 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_6512 + 196] = this.address
                                        mem[_6512 + 228] = block.timestamp + 120
                                        mem[_6512 + 164] = 160
                                        mem[_6512 + 260] = mem[_6512]
                                        s = 0
                                        while s < 32 * mem[_6512]:
                                            mem[s + _6512 + 292] = mem[s + _6512 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (0 / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (0 / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6512 + 260 len (32 * mem[_6512]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6512 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6512 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6512 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6512 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3976 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3976] = 26
                mem[_3976 + 32] = 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3976 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    _4065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4065] = 26
                    mem[_4065 + 32] = 'SafeMath: division by zero'
                    _4081 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4081] = 26
                    mem[_4081 + 32] = 'SafeMath: division by zero'
                    _4095 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4095] = 26
                    mem[_4095 + 32] = 'SafeMath: division by zero'
                    _4117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4117] = 30
                    mem[_4117 + 32] = 'SafeMath: subtraction overflow'
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                        _4138 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4138 + 68] = mem[idx + _4117 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4138 + 68] = mem[_4138 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4138 + -mem[64] + 100
                    if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            _4621 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4621] = 26
                            mem[_4621 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _4621 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _4996 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4996] = 26
                            mem[_4996 + 32] = 'SafeMath: division by zero'
                            _5392 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_5392]
                            mem[_5392 + 32] = stor10
                            require 1 < mem[_5392]
                            mem[_5392 + 64] = stor11
                            mem[_5392 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_5392 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_5392 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_5392 + 196] = this.address
                            mem[_5392 + 228] = block.timestamp + 120
                            mem[_5392 + 164] = 160
                            mem[_5392 + 260] = mem[_5392]
                            t = 0
                            while t < 32 * mem[_5392]:
                                mem[t + _5392 + 292] = mem[t + _5392 + 32]
                                t = t + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5392 + 260 len (32 * mem[_5392]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_5392 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_5392 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_5392 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_5392 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _4650 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4650] = 26
                                mem[_4650 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4650 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5097 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5097] = 26
                                mem[_5097 + 32] = 'SafeMath: division by zero'
                                _5465 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5465]
                                mem[_5465 + 32] = stor10
                                require 1 < mem[_5465]
                                mem[_5465 + 64] = stor11
                                mem[_5465 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5465 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_5465 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5465 + 196] = this.address
                                mem[_5465 + 228] = block.timestamp + 120
                                mem[_5465 + 164] = 160
                                mem[_5465 + 260] = mem[_5465]
                                t = 0
                                while t < 32 * mem[_5465]:
                                    mem[t + _5465 + 292] = mem[t + _5465 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5465 + 260 len (32 * mem[_5465]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5465 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5465 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5465 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5465 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4690 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4690] = 26
                                mem[_4690 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4690 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5187 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5187] = 26
                                mem[_5187 + 32] = 'SafeMath: division by zero'
                                _5560 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5560]
                                mem[_5560 + 32] = stor10
                                require 1 < mem[_5560]
                                mem[_5560 + 64] = stor11
                                mem[_5560 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5560 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_5560 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_5560 + 196] = this.address
                                mem[_5560 + 228] = block.timestamp + 120
                                mem[_5560 + 164] = 160
                                mem[_5560 + 260] = mem[_5560]
                                t = 0
                                while t < 32 * mem[_5560]:
                                    mem[t + _5560 + 292] = mem[t + _5560 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5560 + 260 len (32 * mem[_5560]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5560 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5560 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5560 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5560 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = s
                        continue 
                    mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                    call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor11)
                        staticcall stor11.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = stor12
                        require ext_code.size(stor10)
                        staticcall stor10.0x70a08231 with:
                                gas gas_remaining wei
                               args stor12
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                            _5309 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5309] = 26
                            mem[_5309 + 32] = 'SafeMath: division by zero'
                            if not ext_call.return_data[0]:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _5309 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _5794 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5794] = 26
                            mem[_5794 + 32] = 'SafeMath: division by zero'
                            _6313 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            require mem[_6313]
                            mem[_6313 + 32] = stor10
                            require 1 < mem[_6313]
                            mem[_6313 + 64] = stor11
                            mem[_6313 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_6313 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                            mem[_6313 + 132] = 0 / ext_call.return_data[0] / 10^6
                            mem[_6313 + 196] = this.address
                            mem[_6313 + 228] = block.timestamp + 120
                            mem[_6313 + 164] = 160
                            mem[_6313 + 260] = mem[_6313]
                            s = 0
                            while s < 32 * mem[_6313]:
                                mem[s + _6313 + 292] = mem[s + _6313 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                            call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6313 + 260 len (32 * mem[_6313]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6313 + 100] = this.address
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[_6313 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_6313 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                mem[_6313 + 100] = ext_call.return_data[0]
                                require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _5347 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5347] = 26
                                mem[_5347 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5347 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5903 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5903] = 26
                                mem[_5903 + 32] = 'SafeMath: division by zero'
                                _6366 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6366]
                                mem[_6366 + 32] = stor10
                                require 1 < mem[_6366]
                                mem[_6366 + 64] = stor11
                                mem[_6366 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6366 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_6366 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6366 + 196] = this.address
                                mem[_6366 + 228] = block.timestamp + 120
                                mem[_6366 + 164] = 160
                                mem[_6366 + 260] = mem[_6366]
                                s = 0
                                while s < 32 * mem[_6366]:
                                    mem[s + _6366 + 292] = mem[s + _6366 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6366 + 260 len (32 * mem[_6366]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6366 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6366 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6366 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6366 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _5394 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5394] = 26
                                mem[_5394 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5394 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _6005 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6005] = 26
                                mem[_6005 + 32] = 'SafeMath: division by zero'
                                _6415 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6415]
                                mem[_6415 + 32] = stor10
                                require 1 < mem[_6415]
                                mem[_6415 + 64] = stor11
                                mem[_6415 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6415 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_6415 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                mem[_6415 + 196] = this.address
                                mem[_6415 + 228] = block.timestamp + 120
                                mem[_6415 + 164] = 160
                                mem[_6415 + 260] = mem[_6415]
                                s = 0
                                while s < 32 * mem[_6415]:
                                    mem[s + _6415 + 292] = mem[s + _6415 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6415 + 260 len (32 * mem[_6415]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6415 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6415 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6415 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6415 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4068 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4068] = 26
                    mem[_4068 + 32] = 'SafeMath: division by zero'
                    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        _4085 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4085] = 26
                        mem[_4085 + 32] = 'SafeMath: division by zero'
                        _4105 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4105] = 26
                        mem[_4105 + 32] = 'SafeMath: division by zero'
                        _4124 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4124] = 30
                        mem[_4124 + 32] = 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                            _4154 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4154 + 68] = mem[idx + _4124 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4154 + 68] = mem[_4154 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4154 + -mem[64] + 100
                        if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _4648 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4648] = 26
                                mem[_4648 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4648 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5092 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5092] = 26
                                mem[_5092 + 32] = 'SafeMath: division by zero'
                                _5459 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_5459]
                                mem[_5459 + 32] = stor10
                                require 1 < mem[_5459]
                                mem[_5459 + 64] = stor11
                                mem[_5459 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_5459 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_5459 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_5459 + 196] = this.address
                                mem[_5459 + 228] = block.timestamp + 120
                                mem[_5459 + 164] = 160
                                mem[_5459 + 260] = mem[_5459]
                                t = 0
                                while t < 32 * mem[_5459]:
                                    mem[t + _5459 + 292] = mem[t + _5459 + 32]
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5459 + 260 len (32 * mem[_5459]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_5459 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_5459 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_5459 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_5459 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _4689 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4689] = 26
                                    mem[_4689 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4689 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5183 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5183] = 26
                                    mem[_5183 + 32] = 'SafeMath: division by zero'
                                    _5553 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5553]
                                    mem[_5553 + 32] = stor10
                                    require 1 < mem[_5553]
                                    mem[_5553 + 64] = stor11
                                    mem[_5553 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5553 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_5553 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5553 + 196] = this.address
                                    mem[_5553 + 228] = block.timestamp + 120
                                    mem[_5553 + 164] = 160
                                    mem[_5553 + 260] = mem[_5553]
                                    t = 0
                                    while t < 32 * mem[_5553]:
                                        mem[t + _5553 + 292] = mem[t + _5553 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5553 + 260 len (32 * mem[_5553]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5553 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5553 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5553 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5553 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4740 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4740] = 26
                                    mem[_4740 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4740 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5254 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5254] = 26
                                    mem[_5254 + 32] = 'SafeMath: division by zero'
                                    _5667 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5667]
                                    mem[_5667 + 32] = stor10
                                    require 1 < mem[_5667]
                                    mem[_5667 + 64] = stor11
                                    mem[_5667 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5667 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_5667 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_5667 + 196] = this.address
                                    mem[_5667 + 228] = block.timestamp + 120
                                    mem[_5667 + 164] = 160
                                    mem[_5667 + 260] = mem[_5667]
                                    t = 0
                                    while t < 32 * mem[_5667]:
                                        mem[t + _5667 + 292] = mem[t + _5667 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5667 + 260 len (32 * mem[_5667]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5667 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5667 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5667 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5667 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s
                            continue 
                        mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor11)
                            staticcall stor11.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = stor12
                            require ext_code.size(stor10)
                            staticcall stor10.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stor12
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                _5346 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5346] = 26
                                mem[_5346 + 32] = 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _5346 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                _5898 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5898] = 26
                                mem[_5898 + 32] = 'SafeMath: division by zero'
                                _6364 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                require mem[_6364]
                                mem[_6364 + 32] = stor10
                                require 1 < mem[_6364]
                                mem[_6364 + 64] = stor11
                                mem[_6364 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_6364 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                mem[_6364 + 132] = 0 / ext_call.return_data[0] / 10^6
                                mem[_6364 + 196] = this.address
                                mem[_6364 + 228] = block.timestamp + 120
                                mem[_6364 + 164] = 160
                                mem[_6364 + 260] = mem[_6364]
                                s = 0
                                while s < 32 * mem[_6364]:
                                    mem[s + _6364 + 292] = mem[s + _6364 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6364 + 260 len (32 * mem[_6364]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_6364 + 100] = this.address
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[_6364 + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6364 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                    mem[_6364 + 100] = ext_call.return_data[0]
                                    require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                    call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _5391 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5391] = 26
                                    mem[_5391 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5391 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5998 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5998] = 26
                                    mem[_5998 + 32] = 'SafeMath: division by zero'
                                    _6412 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6412]
                                    mem[_6412 + 32] = stor10
                                    require 1 < mem[_6412]
                                    mem[_6412 + 64] = stor11
                                    mem[_6412 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6412 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_6412 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6412 + 196] = this.address
                                    mem[_6412 + 228] = block.timestamp + 120
                                    mem[_6412 + 164] = 160
                                    mem[_6412 + 260] = mem[_6412]
                                    s = 0
                                    while s < 32 * mem[_6412]:
                                        mem[s + _6412 + 292] = mem[s + _6412 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6412 + 260 len (32 * mem[_6412]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6412 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6412 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6412 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6412 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _5461 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5461] = 26
                                    mem[_5461 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5461 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _6095 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6095] = 26
                                    mem[_6095 + 32] = 'SafeMath: division by zero'
                                    _6462 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6462]
                                    mem[_6462 + 32] = stor10
                                    require 1 < mem[_6462]
                                    mem[_6462 + 64] = stor11
                                    mem[_6462 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6462 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_6462 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                    mem[_6462 + 196] = this.address
                                    mem[_6462 + 228] = block.timestamp + 120
                                    mem[_6462 + 164] = 160
                                    mem[_6462 + 260] = mem[_6462]
                                    s = 0
                                    while s < 32 * mem[_6462]:
                                        mem[s + _6462 + 292] = mem[s + _6462 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6462 + 260 len (32 * mem[_6462]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6462 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6462 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6462 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6462 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 750000:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _4088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4088] = 26
                        mem[_4088 + 32] = 'SafeMath: division by zero'
                        if not 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6:
                            _4109 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4109] = 26
                            mem[_4109 + 32] = 'SafeMath: division by zero'
                            _4137 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4137] = 30
                            mem[_4137 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                                _4171 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4171 + 68] = mem[idx + _4137 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4171 + 68] = mem[_4171 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4171 + -mem[64] + 100
                            if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _4687 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4687] = 26
                                    mem[_4687 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4687 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5178 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5178] = 26
                                    mem[_5178 + 32] = 'SafeMath: division by zero'
                                    _5547 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5547]
                                    mem[_5547 + 32] = stor10
                                    require 1 < mem[_5547]
                                    mem[_5547 + 64] = stor11
                                    mem[_5547 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5547 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_5547 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5547 + 196] = this.address
                                    mem[_5547 + 228] = block.timestamp + 120
                                    mem[_5547 + 164] = 160
                                    mem[_5547 + 260] = mem[_5547]
                                    t = 0
                                    while t < 32 * mem[_5547]:
                                        mem[t + _5547 + 292] = mem[t + _5547 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5547 + 260 len (32 * mem[_5547]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5547 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5547 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5547 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5547 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                        _4739 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4739] = 26
                                        mem[_4739 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4739 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5250 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5250] = 26
                                        mem[_5250 + 32] = 'SafeMath: division by zero'
                                        _5660 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5660]
                                        mem[_5660 + 32] = stor10
                                        require 1 < mem[_5660]
                                        mem[_5660 + 64] = stor11
                                        mem[_5660 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5660 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_5660 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5660 + 196] = this.address
                                        mem[_5660 + 228] = block.timestamp + 120
                                        mem[_5660 + 164] = 160
                                        mem[_5660 + 260] = mem[_5660]
                                        t = 0
                                        while t < 32 * mem[_5660]:
                                            mem[t + _5660 + 292] = mem[t + _5660 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5660 + 260 len (32 * mem[_5660]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5660 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5660 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5660 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5660 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4800 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4800] = 26
                                        mem[_4800 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4800 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5302 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5302] = 26
                                        mem[_5302 + 32] = 'SafeMath: division by zero'
                                        _5775 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5775]
                                        mem[_5775 + 32] = stor10
                                        require 1 < mem[_5775]
                                        mem[_5775 + 64] = stor11
                                        mem[_5775 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5775 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_5775 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_5775 + 196] = this.address
                                        mem[_5775 + 228] = block.timestamp + 120
                                        mem[_5775 + 164] = 160
                                        mem[_5775 + 260] = mem[_5775]
                                        t = 0
                                        while t < 32 * mem[_5775]:
                                            mem[t + _5775 + 292] = mem[t + _5775 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5775 + 260 len (32 * mem[_5775]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5775 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5775 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5775 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5775 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args -(ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                    _5390 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5390] = 26
                                    mem[_5390 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5390 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5993 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5993] = 26
                                    mem[_5993 + 32] = 'SafeMath: division by zero'
                                    _6410 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6410]
                                    mem[_6410 + 32] = stor10
                                    require 1 < mem[_6410]
                                    mem[_6410 + 64] = stor11
                                    mem[_6410 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6410 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                    mem[_6410 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6410 + 196] = this.address
                                    mem[_6410 + 228] = block.timestamp + 120
                                    mem[_6410 + 164] = 160
                                    mem[_6410 + 260] = mem[_6410]
                                    s = 0
                                    while s < 32 * mem[_6410]:
                                        mem[s + _6410 + 292] = mem[s + _6410 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6410 + 260 len (32 * mem[_6410]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6410 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6410 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6410 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6410 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]:
                                        _5458 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5458] = 26
                                        mem[_5458 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5458 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6088 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6088] = 26
                                        mem[_6088 + 32] = 'SafeMath: division by zero'
                                        _6459 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6459]
                                        mem[_6459 + 32] = stor10
                                        require 1 < mem[_6459]
                                        mem[_6459 + 64] = stor11
                                        mem[_6459 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6459 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_6459 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6459 + 196] = this.address
                                        mem[_6459 + 228] = block.timestamp + 120
                                        mem[_6459 + 164] = 160
                                        mem[_6459 + 260] = mem[_6459]
                                        s = 0
                                        while s < 32 * mem[_6459]:
                                            mem[s + _6459 + 292] = mem[s + _6459 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6459 + 260 len (32 * mem[_6459]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6459 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6459 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6459 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6459 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / -1 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5549 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5549] = 26
                                        mem[_5549 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5549 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6174 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6174] = 26
                                        mem[_6174 + 32] = 'SafeMath: division by zero'
                                        _6504 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6504]
                                        mem[_6504 + 32] = stor10
                                        require 1 < mem[_6504]
                                        mem[_6504 + 64] = stor11
                                        mem[_6504 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6504 + 100] = -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
                                        mem[_6504 + 132] = -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6
                                        mem[_6504 + 196] = this.address
                                        mem[_6504 + 228] = block.timestamp + 120
                                        mem[_6504 + 164] = 160
                                        mem[_6504 + 260] = mem[_6504]
                                        s = 0
                                        while s < 32 * mem[_6504]:
                                            mem[s + _6504 + 292] = mem[s + _6504 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args -ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0], -1 * sub_39bb9c24 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6504 + 260 len (32 * mem[_6504]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6504 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6504 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6504 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6504 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 != sub_39bb9c24:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _4112 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4112] = 26
                            mem[_4112 + 32] = 'SafeMath: division by zero'
                            _4153 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4153] = 30
                            mem[_4153 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6:
                                _4191 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _4191 + 68] = mem[idx + _4153 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4191 + 68] = mem[_4191 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4191 + -mem[64] + 100
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                    _4737 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4737] = 26
                                    mem[_4737 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4737 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _5245 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5245] = 26
                                    mem[_5245 + 32] = 'SafeMath: division by zero'
                                    _5654 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_5654]
                                    mem[_5654 + 32] = stor10
                                    require 1 < mem[_5654]
                                    mem[_5654 + 64] = stor11
                                    mem[_5654 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_5654 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                    mem[_5654 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_5654 + 196] = this.address
                                    mem[_5654 + 228] = block.timestamp + 120
                                    mem[_5654 + 164] = 160
                                    mem[_5654 + 260] = mem[_5654]
                                    t = 0
                                    while t < 32 * mem[_5654]:
                                        mem[t + _5654 + 292] = mem[t + _5654 + 32]
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5654 + 260 len (32 * mem[_5654]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_5654 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_5654 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_5654 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_5654 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _4799 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4799] = 26
                                        mem[_4799 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4799 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5298 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5298] = 26
                                        mem[_5298 + 32] = 'SafeMath: division by zero'
                                        _5768 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5768]
                                        mem[_5768 + 32] = stor10
                                        require 1 < mem[_5768]
                                        mem[_5768 + 64] = stor11
                                        mem[_5768 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5768 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_5768 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_5768 + 196] = this.address
                                        mem[_5768 + 228] = block.timestamp + 120
                                        mem[_5768 + 164] = 160
                                        mem[_5768 + 260] = mem[_5768]
                                        t = 0
                                        while t < 32 * mem[_5768]:
                                            mem[t + _5768 + 292] = mem[t + _5768 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5768 + 260 len (32 * mem[_5768]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5768 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5768 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5768 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5768 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _4880 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4880] = 26
                                        mem[_4880 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4880 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _5339 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5339] = 26
                                        mem[_5339 + 32] = 'SafeMath: division by zero'
                                        _5879 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_5879]
                                        mem[_5879 + 32] = stor10
                                        require 1 < mem[_5879]
                                        mem[_5879 + 64] = stor11
                                        mem[_5879 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_5879 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_5879 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_5879 + 196] = this.address
                                        mem[_5879 + 228] = block.timestamp + 120
                                        mem[_5879 + 164] = 160
                                        mem[_5879 + 260] = mem[_5879]
                                        t = 0
                                        while t < 32 * mem[_5879]:
                                            mem[t + _5879 + 292] = mem[t + _5879 + 32]
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_5879 + 260 len (32 * mem[_5879]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_5879 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_5879 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_5879 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_5879 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s
                                continue 
                            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) < arg1:
                                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeemUnderlying(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor11)
                                staticcall stor11.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 4] = stor12
                                require ext_code.size(stor10)
                                staticcall stor10.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stor12
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                    _5457 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_5457] = 26
                                    mem[_5457 + 32] = 'SafeMath: division by zero'
                                    if not ext_call.return_data[0]:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _5457 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    _6083 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6083] = 26
                                    mem[_6083 + 32] = 'SafeMath: division by zero'
                                    _6457 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require mem[_6457]
                                    mem[_6457 + 32] = stor10
                                    require 1 < mem[_6457]
                                    mem[_6457 + 64] = stor11
                                    mem[_6457 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_6457 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                    mem[_6457 + 132] = 0 / ext_call.return_data[0] / 10^6
                                    mem[_6457 + 196] = this.address
                                    mem[_6457 + 228] = block.timestamp + 120
                                    mem[_6457 + 164] = 160
                                    mem[_6457 + 260] = mem[_6457]
                                    s = 0
                                    while s < 32 * mem[_6457]:
                                        mem[s + _6457 + 292] = mem[s + _6457 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6457 + 260 len (32 * mem[_6457]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_6457 + 100] = this.address
                                    require ext_code.size(stor11)
                                    staticcall stor11.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[_6457 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6457 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                        mem[_6457 + 100] = ext_call.return_data[0]
                                        require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                        call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]):
                                        _5546 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5546] = 26
                                        mem[_5546 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5546 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6167 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6167] = 26
                                        mem[_6167 + 32] = 'SafeMath: division by zero'
                                        _6501 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6501]
                                        mem[_6501 + 32] = stor10
                                        require 1 < mem[_6501]
                                        mem[_6501 + 64] = stor11
                                        mem[_6501 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6501 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_6501 + 132] = 0 / ext_call.return_data[0] / 10^6
                                        mem[_6501 + 196] = this.address
                                        mem[_6501 + 228] = block.timestamp + 120
                                        mem[_6501 + 164] = 160
                                        mem[_6501 + 260] = mem[_6501]
                                        s = 0
                                        while s < 32 * mem[_6501]:
                                            mem[s + _6501 + 292] = mem[s + _6501 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6501 + 260 len (32 * mem[_6501]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6501 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6501 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6501 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6501 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0]) != sub_39bb9c24:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _5656 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5656] = 26
                                        mem[_5656 + 32] = 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _5656 + 32]
                                                idx = idx + 32
                                                continue 
                                            revert with 0, 'SafeMath: division by zero'
                                        _6241 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6241] = 26
                                        mem[_6241 + 32] = 'SafeMath: division by zero'
                                        _6547 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        require mem[_6547]
                                        mem[_6547 + 32] = stor10
                                        require 1 < mem[_6547]
                                        mem[_6547 + 64] = stor11
                                        mem[_6547 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_6547 + 100] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0])
                                        mem[_6547 + 132] = (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6
                                        mem[_6547 + 196] = this.address
                                        mem[_6547 + 228] = block.timestamp + 120
                                        mem[_6547 + 164] = 160
                                        mem[_6547 + 260] = mem[_6547]
                                        s = 0
                                        while s < 32 * mem[_6547]:
                                            mem[s + _6547 + 292] = mem[s + _6547 + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
                                        call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]), (sub_39bb9c24 * 750000 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^6 / 10^6 * ext_call.return_data[0] * sub_39bb9c24) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] * sub_39bb9c24) / ext_call.return_data[0] / 10^6, 160, address(this.address), block.timestamp + 120, mem[_6547 + 260 len (32 * mem[_6547]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_6547 + 100] = this.address
                                        require ext_code.size(stor11)
                                        staticcall stor11.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[_6547 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0]:
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            staticcall 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.borrowBalanceStored(address arg1) with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6547 + 96] = 0xe75270200000000000000000000000000000000000000000000000000000000
                                            mem[_6547 + 100] = ext_call.return_data[0]
                                            require ext_code.size(0x5aa53f03197e08c4851cad8c92c7922da5857e5d)
                                            call 0x5aa53f03197e08c4851cad8c92c7922da5857e5d.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = 1
            continue 
}



}
