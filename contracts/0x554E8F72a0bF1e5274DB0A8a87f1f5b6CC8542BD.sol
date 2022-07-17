contract main {




// =====================  Runtime code  =====================


#
#  - sub_f81c418b(?)
#
const want = 0xe45ac34e528907d0a0239ab5db507688070b20bf

const usdc = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const sub_6517bbec(?) = 180

const cToken = 0xe45ac34e528907d0a0239ab5db507688070b20bf

const underlying = 0x4068da6c83afcfa0e13ba15a6696662335d5b75

const yieldToken = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const getPoolBalance = ext_call.return_data[0]

const scream = 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475

const sub_ee8cf800(?) = ext_call.return_data[0]

const VERSION = 4


uint8 stor0; offset 160
uint32 stor0;
uint128 stor0; offset 160
address owner;
uint256 stor0;
address sub_e83476b8Address;
uint256 minDeposit;
uint256 minHarvest;
uint256 sub_b0fd0d2d;
uint256 compoundFee;
uint256 sub_b0b84374;
uint256 sub_fc915682;
address sub_6f5a64e8Address;
uint32 stor10;
address sub_0987b97bAddress;
uint256 stor10;
address sub_4c8b6a24Address;
uint256 sub_3d03aeb2;
address comptrollerAddress;

function sub_0987b97b(?) payable {
    return address(sub_0987b97bAddress)
}

function compoundFee() payable {
    return compoundFee
}

function sub_3d03aeb2(?) payable {
    return sub_3d03aeb2
}

function minDeposit() payable {
    return minDeposit
}

function sub_4c8b6a24(?) payable {
    return sub_4c8b6a24Address
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function comptroller() payable {
    return comptrollerAddress
}

function sub_6f5a64e8(?) payable {
    return sub_6f5a64e8Address
}

function owner() payable {
    return owner
}

function minHarvest() payable {
    return minHarvest
}

function sub_b0b84374(?) payable {
    return sub_b0b84374
}

function sub_b0fd0d2d(?) payable {
    return sub_b0fd0d2d
}

function sub_e83476b8(?) payable {
    return sub_e83476b8Address
}

function sub_fc915682(?) payable {
    return sub_fc915682
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b8e2e1d4(?) payable {
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    sub_4c8b6a24Address = 0
    sub_3d03aeb2 = 0
}

function sub_41a8b68a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    minHarvest = arg1
}

function sub_27ec5066(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    compoundFee = arg1
}

function sub_e2aec6da(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    sub_b0fd0d2d = arg1
}

function setMinDeposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    minDeposit = arg1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    sub_e83476b8Address = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    sub_6f5a64e8Address = arg1
}

function pause() payable {
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function sub_eaee7047(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    sub_4c8b6a24Address = arg1
    sub_3d03aeb2 = block.timestamp
    emit 0xfa08d361: sub_4c8b6a24Address
}

function harvest() payable {
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.claimComp(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_66fdd174(?) payable {
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    if sub_3d03aeb2 <= 0:
        revert with 0, 'Invalid wait time'
    if block.timestamp <= sub_3d03aeb2:
        revert with 0, 'Invalid wait time'
    if sub_3d03aeb2 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - sub_3d03aeb2 <= 180:
        revert with 0, 'Wait period not over'
    if not sub_4c8b6a24Address:
        revert with 0, 'Invalid pending strategy'
    address(sub_0987b97bAddress) = sub_4c8b6a24Address
    sub_4c8b6a24Address = 0
    sub_3d03aeb2 = 0
    emit 0xbe5003d3: address(sub_0987b97bAddress)
}

function sub_ffa222fe(?) payable {
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.compSupplyState(address arg1) with:
            gas gas_remaining wei
           args 0xe45ac34e528907d0a0239ab5db507688070b20bf
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.compSupplierIndex(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xe45ac34e528907d0a0239ab5db507688070b20bf, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
    staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.compAccrued(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] + (-1 * ext_call.return_data[0] * Mask(32, 224, ext_call.return_data[0]) / 1000000000000000000 * 10^18))
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
        staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
        if ext_call.return_data[0] >= arg1:
            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
        else:
            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            revert with 0, 'no tokens redeemed from cToken'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0
        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
           funct uint32(stor0.field_0)
             gas gas_remaining wei
            args 0, mem[324 len 4]
    else:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
        staticcall 0xe45ac34e528907d0a0239ab5db507688070b20bf.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
        if ext_call.return_data[0] < arg1:
            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'no tokens redeemed from cToken'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
               funct uint32(stor0.field_0)
                 gas gas_remaining wei
                args 0, mem[324 len 4]
        else:
            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
            staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                revert with 0, 'no tokens redeemed from cToken'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0
            mem[324 len 0] = 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
               funct uint32(stor0.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), 0
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0.field_0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    else:
        return 0
}

function process(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.claimComp(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475)
    staticcall 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_b0fd0d2d:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(0xe0654c8e6fd4d733349ac7e09f6f23da256bf475) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
        call 0xe0654c8e6fd4d733349ac7e09f6f23da256bf475 with:
           funct uint32(stor10)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if compoundFee > sub_b0b84374:
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(address(sub_0987b97bAddress))
                call address(sub_0987b97bAddress).0x59d32bdb with:
                     gas gas_remaining wei
                    args address(this.address), sub_b0b84374, sub_6f5a64e8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    if not ext_call.return_data[0] * arg1 / 10^18:
                        if 0 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] * arg1 / 10^18:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                        else:
                            require ext_call.return_data[0] * arg1 / 10^18
                            if ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / ext_call.return_data[0] * arg1 / 10^18 != sub_fc915682:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            if ext_call.return_data[32] <= ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / 10000:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                    else:
                        require ext_call.return_data[0] * arg1 / 10^18
                        if ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / ext_call.return_data[0] * arg1 / 10^18 != sub_b0b84374:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                        if ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                        else:
                            require (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000)
                            if (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000 * sub_fc915682) / (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000) != sub_fc915682:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            if ext_call.return_data[32] <= (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000 * sub_fc915682) / 10000:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(address(sub_0987b97bAddress))
                call address(sub_0987b97bAddress).0x59d32bdb with:
                     gas gas_remaining wei
                    args address(this.address), sub_b0b84374, sub_6f5a64e8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                    mem[ceil32(return_data.size) + 373 len 20]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 362 len 31]
                    if not ext_call.return_data[0] * arg1 / 10^18:
                        if 0 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] * arg1 / 10^18:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
                        else:
                            require ext_call.return_data[0] * arg1 / 10^18
                            if ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / ext_call.return_data[0] * arg1 / 10^18 != sub_fc915682:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if ext_call.return_data[32] <= ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / 10000:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
                    else:
                        require ext_call.return_data[0] * arg1 / 10^18
                        if ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / ext_call.return_data[0] * arg1 / 10^18 != sub_b0b84374:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        if ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
                        else:
                            require (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000)
                            if (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000 * sub_fc915682) / (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000) != sub_fc915682:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if ext_call.return_data[32] <= (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * sub_b0b84374 / 1000 * sub_fc915682) / 10000:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
        else:
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor10):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                require ext_code.size(address(sub_0987b97bAddress))
                call address(sub_0987b97bAddress).0x59d32bdb with:
                     gas gas_remaining wei
                    args address(this.address), compoundFee, sub_6f5a64e8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                    if not ext_call.return_data[0] * arg1 / 10^18:
                        if 0 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] * arg1 / 10^18:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                        else:
                            require ext_call.return_data[0] * arg1 / 10^18
                            if ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / ext_call.return_data[0] * arg1 / 10^18 != sub_fc915682:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            if ext_call.return_data[32] <= ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / 10000:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                    else:
                        require ext_call.return_data[0] * arg1 / 10^18
                        if ext_call.return_data[0] * arg1 / 10^18 * compoundFee / ext_call.return_data[0] * arg1 / 10^18 != compoundFee:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                        if ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
                        else:
                            require (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000)
                            if (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000 * sub_fc915682) / (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000) != sub_fc915682:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                            if ext_call.return_data[32] <= (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000 * sub_fc915682) / 10000:
                                revert with 0, 32, 44, 0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167, mem[372 len 20]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                require ext_code.size(address(sub_0987b97bAddress))
                call address(sub_0987b97bAddress).0x59d32bdb with:
                     gas gas_remaining wei
                    args address(this.address), compoundFee, sub_6f5a64e8Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] <= 0:
                        revert with 0, 
                                    32,
                                    44,
                                    0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                    mem[ceil32(return_data.size) + 373 len 20]
                else:
                    require ext_call.return_data[0]
                    if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 362 len 31]
                    if not ext_call.return_data[0] * arg1 / 10^18:
                        if 0 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not ext_call.return_data[0] * arg1 / 10^18:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
                        else:
                            require ext_call.return_data[0] * arg1 / 10^18
                            if ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / ext_call.return_data[0] * arg1 / 10^18 != sub_fc915682:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if ext_call.return_data[32] <= ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682 / 10000:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
                    else:
                        require ext_call.return_data[0] * arg1 / 10^18
                        if ext_call.return_data[0] * arg1 / 10^18 * compoundFee / ext_call.return_data[0] * arg1 / 10^18 != compoundFee:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 362 len 31]
                        if ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000 > ext_call.return_data[0] * arg1 / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
                        else:
                            require (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000)
                            if (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000 * sub_fc915682) / (ext_call.return_data[0] * arg1 / 10^18) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000) != sub_fc915682:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 362 len 31]
                            if ext_call.return_data[32] <= (ext_call.return_data[0] * arg1 / 10^18 * sub_fc915682) - (ext_call.return_data[0] * arg1 / 10^18 * compoundFee / 1000 * sub_fc915682) / 10000:
                                revert with 0, 
                                            32,
                                            44,
                                            0x657969656c6420636f6e76657273696f6e206f757473696465206f6620616c6c6f77656420736c6970706167,
                                            mem[ceil32(return_data.size) + 373 len 20]
}

function deposit() payable {
    if msg.sender == owner:
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= minDeposit:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xe45ac34e528907d0a0239ab5db507688070b20bf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[382 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, ext_call.return_data[0 len 28]
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                    if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if ext_call.return_data[0]:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0xe45ac34e528907d0a0239ab5db507688070b20bf
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 383 len 10]
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                        if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    if not ext_call.return_data[0]:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 489 len 0] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                            if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                        call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                    else:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0xe45ac34e528907d0a0239ab5db507688070b20bf
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(return_data.size) + 383 len 10]
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, ext_call.return_data[0 len 28]
                        mem[ceil32(return_data.size) + 517 len 4] = 0
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                            if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                            call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if sub_e83476b8Address != msg.sender:
            revert with 0, '!admin'
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= minDeposit:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xe45ac34e528907d0a0239ab5db507688070b20bf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[382 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, ext_call.return_data[0 len 28]
                mem[488 len 0] = 0
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                    if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0xe45ac34e528907d0a0239ab5db507688070b20bf
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x70b20bf with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5, 0, 0
                    if not approve(address arg1, uint256 arg2), 0xe45ac34e528907d0a0239ab5:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                    call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0xe45ac34e528907d0a0239ab5db507688070b20bf)
                    call 0xe45ac34e528907d0a0239ab5db507688070b20bf.0xa0712d68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
