contract main {




// =====================  Runtime code  =====================


#
#  - resetApprovals()
#  - approveContracts()
#  - rebalanceCollateral()
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

function sub_d2d9a69d(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require msg.sender == owner
    idx = 0
    while idx < 10:
        idx = idx + 1
        continue 
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    if not arg1:
        revert with 0, 'withdraw must be greater than 0'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'insufficient balance'
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
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / ext_call.return_data[0] != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
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
                if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / ext_call.return_data[0] != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
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
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (0 / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
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
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (0 / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] != arg1:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    emit Transfer(arg1, msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * arg1) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
    if stor0 + 1 != stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
}

function withdrawAll() payable {
    stor0++
    if not balanceOf[address(msg.sender)]:
        revert with 0, 'withdraw must be greater than 0'
    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'insufficient balance'
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
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
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
                if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
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
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
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
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]):
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + (0 / ext_call.return_data[0]) != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (0 / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0 / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not 0 / totalSupply:
                            if 0 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * 0 / totalSupply / 0 / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * 0 / totalSupply / 10^6 > 0 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (0 / totalSupply) - (withdrawalFee * 0 / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] != balanceOf[address(msg.sender)]:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not msg.sender:
                        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[453 len 31]
                    if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[418 len 30], mem[478 len 2]
                    balanceOf[address(msg.sender)] = 0
                    if balanceOf[address(msg.sender)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balanceOf[address(msg.sender)]
                    emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
                    require ext_code.size(stor10)
                    staticcall stor10.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                        if not ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                        call stor10 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[676 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[644]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 723 len 22]
                    else:
                        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[804 len 4]
                        else:
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply != withdrawalFee:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                            if withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            idx = 0
                            while idx < 10:
                                idx = idx + 1
                                continue 
                            if not ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(stor10):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) >> 32
                            call stor10 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply) - (withdrawalFee * (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(msg.sender)]) / totalSupply / 10^6)) << 224, mem[804 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[772]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 851 len 22]
    if stor0 + 1 != stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
}



}
