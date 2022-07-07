contract main {




// =====================  Runtime code  =====================


#
#  - sub_6f1ed6f7(?)
#  - paybackAndWithdraw(int256 arg1, int256 arg2)
#  - deposit(uint256 arg1)
#  - depositAndBorrow(uint256 arg1, uint256 arg2)
#  - initialize(address arg1, address arg2, address arg3, address arg4)
#
const sub_77a7e77d(?) = 0xffffffffffffffffffffffffffffffffffffffff

const ONE_YEAR = (8760 * 24 * 3600)


address owner;
uint8 stor101;
uint32 stor151;
address stor151;
uint256 stor151;
uint32 stor152;
uint64 stor152;
uint64 stor152; offset 160
address stor152;
uint256 stor152;
uint64 stor153;
uint256 stor154;
uint64 stor204;
uint64 stor204; offset 64
uint64 stor205;
uint64 stor205; offset 64
uint64 stor206;
uint64 stor206; offset 64
uint64 stor207;
uint64 stor207; offset 64
array of struct providers;
address activeProviderAddress;
address stor210;
address fujiERC1155Address;
address oracleAddress;
array of struct stor213;
uint8 stor214;
uint8 stor214; offset 8
mapping of uint256 stor215;
uint256 sub_685a4605;

function providers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < providers.length
    return providers[arg1].field_0
}

function paused() {
    return bool(stor101)
}

function sub_685a4605(?) {
    return sub_685a4605
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function activeProvider() {
    return activeProviderAddress
}

function fujiERC1155() {
    return fujiERC1155Address
}

function _fallback() payable {
    revert
}

function protocolFee() {
    return uint64(stor206.field_0), uint64(stor206.field_64)
}

function sub_1c1fc2cc(?) {
    return uint64(stor205.field_0), uint64(stor205.field_64)
}

function sub_5564f53d(?) {
    return uint64(stor204.field_0), uint64(stor204.field_64)
}

function sub_8b66aceb(?) {
    return uint64(stor207.field_0), uint64(stor207.field_64)
}

function vAssets() {
    return address(stor151), address(stor152.field_0), uint64(stor152.field_0), stor153
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setFujiAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor210 = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor101:
        revert with 0, 'Pausable: paused'
    stor101 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor101:
        revert with 0, 'Pausable: not paused'
    stor101 = 0
    emit Unpaused(msg.sender);
}

function getLiquidationBonusFor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 and uint64(stor207.field_0) > -1 / arg1:
        revert with 0, 17
    if not uint64(stor207.field_64):
        revert with 0, 18
    return (arg1 * uint64(stor207.field_0) / uint64(stor207.field_64))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function depositBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0xed05ae78 with:
            gas gas_remaining wei
           args address(stor151)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function borrowBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x7d6af079 with:
            gas gas_remaining wei
           args address(stor152.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function userDepositBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), uint64(stor152.field_160)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        require ext_code.size(stor210)
        staticcall stor210.getController() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, '', 0
    oracleAddress = arg1
}

function setActiveProvider(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        require ext_code.size(stor210)
        staticcall stor210.getController() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    activeProviderAddress = arg1
    emit SetActiveProvider(arg1);
}

function userProtocolFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), stor153
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < stor215[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] and block.timestamp - stor215[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (block.timestamp * ext_call.return_data[0]) - (stor215[address(arg1)] * ext_call.return_data[0]) and uint64(stor206.field_0) > -1 / (block.timestamp * ext_call.return_data[0]) - (stor215[address(arg1)] * ext_call.return_data[0]):
        revert with 0, 17
    if not uint64(stor206.field_64):
        revert with 0, 18
    return ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(arg1)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
}

function updateF1155Balances() {
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0x7d6af079 with:
            gas gas_remaining wei
           args address(stor152.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args stor153, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0xed05ae78 with:
            gas gas_remaining wei
           args address(stor151)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args uint64(stor152.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getProviders() {
    mem[64] = (32 * providers.length) + 128
    mem[96] = providers.length
    if not providers.length:
        mem[(32 * providers.length) + 128] = 32
        mem[(32 * providers.length) + 160] = providers.length
        idx = 0
        s = (32 * providers.length) + 192
        t = 128
        while idx < providers.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * providers.length) + 128
           len (96 * providers.length) + 64
    mem[128] = address(providers.field_0)
    idx = 128
    s = 0
    while (32 * providers.length) + 96 > idx:
        mem[idx + 32] = providers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * providers.length) + 128] = 32
    mem[(32 * providers.length) + 160] = providers.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < providers.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * providers.length) + -mem[64] + 192
}

function setProviders(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        require ext_code.size(stor210)
        staticcall stor210.getController() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, '', 0
    providers.length = arg1.length
    if not arg1.length:
        idx = 0
        while providers.length > idx:
            providers[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            providers[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while providers.length > idx:
            providers[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setFujiERC1155(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        require ext_code.size(stor210)
        staticcall stor210.getController() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    fujiERC1155Address = arg1
    require ext_code.size(arg1)
    call arg1.0x30e2d1ed with:
         gas gas_remaining wei
        args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    uint64(stor152.field_160) = ext_call.return_data[24 len 8]
    require ext_code.size(arg1)
    call arg1.0x30e2d1ed with:
         gas gas_remaining wei
        args 1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    stor153 = ext_call.return_data[24 len 8]
}

function userDebtBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), stor153
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < stor215[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] and block.timestamp - stor215[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (block.timestamp * ext_call.return_data[0]) - (stor215[address(arg1)] * ext_call.return_data[0]) and uint64(stor206.field_0) > -1 / (block.timestamp * ext_call.return_data[0]) - (stor215[address(arg1)] * ext_call.return_data[0]):
        revert with 0, 17
    if not uint64(stor206.field_64):
        revert with 0, 18
    if ext_call.return_data[0] > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(arg1)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
        revert with 0, 17
    return (ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(arg1)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600))
}

function sub_3688fedd(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == uint64(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if msg.sender == owner:
        mem[ceil32(arg3.length) + 288] = 32
        mem[ceil32(arg3.length) + 320] = 7
        mem[ceil32(arg3.length) + 352] = 'collatF'
        mem[ceil32(arg3.length) + 256] = 96
        if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(mem[ceil32(arg3.length) + 288 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 288 len -arg3.length + ceil32(arg3.length)]]):
            uint64(stor205.field_0) = uint64(arg1)
            uint64(stor205.field_64) = uint64(arg2)
        else:
            if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(Array(len=7, data='safetyF')):
                uint64(stor204.field_0) = uint64(arg1)
                uint64(stor204.field_64) = uint64(arg2)
            else:
                if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(Array(len=9, data='bonusLiqF')):
                    uint64(stor207.field_0) = uint64(arg1)
                    uint64(stor207.field_64) = uint64(arg2)
                else:
                    if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(Array(len=11, data='protocolFee')):
                        uint64(stor206.field_0) = uint64(arg1)
                        uint64(stor206.field_64) = uint64(arg2)
    else:
        require ext_code.size(stor210)
        staticcall stor210.getController() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(ext_call.return_data[0]) != msg.sender:
            revert with 0, '', 0
        mem[ceil32(arg3.length) + ceil32(return_data.size) + 288] = 32
        mem[ceil32(arg3.length) + ceil32(return_data.size) + 320] = 7
        mem[ceil32(arg3.length) + ceil32(return_data.size) + 352] = 'collatF'
        mem[ceil32(arg3.length) + ceil32(return_data.size) + 256] = 96
        if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(mem[ceil32(arg3.length) + ceil32(return_data.size) + 288 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(return_data.size) + arg3.length + 288 len -arg3.length + ceil32(arg3.length)]]):
            uint64(stor205.field_0) = uint64(arg1)
            uint64(stor205.field_64) = uint64(arg2)
        else:
            if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(Array(len=7, data='safetyF')):
                uint64(stor204.field_0) = uint64(arg1)
                uint64(stor204.field_64) = uint64(arg2)
            else:
                if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(Array(len=9, data='bonusLiqF')):
                    uint64(stor207.field_0) = uint64(arg1)
                    uint64(stor207.field_64) = uint64(arg2)
                else:
                    if sha3(Array(len=arg3.length, data=arg3[all])) == sha3(Array(len=11, data='protocolFee')):
                        uint64(stor206.field_0) = uint64(arg1)
                        uint64(stor206.field_64) = uint64(arg2)
}

function withdrawProtocolFee() {
    if stor154 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor154 = 2
    require ext_code.size(stor210)
    staticcall stor210.getTreasury() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_685a4605:
        if not address(stor152.field_0):
            call ext_call.return_data[12 len 20] with:
               value sub_685a4605 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to send Ether'
        else:
            if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
                call ext_call.return_data[12 len 20] with:
                   value sub_685a4605 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
            else:
                mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 164] = sub_685a4605
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(stor152.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = 0, ext_call.return_data[12 len 20], sub_685a4605, 0
                mem[ceil32(return_data.size) + 328] = 0
                call address(stor152.field_0) with:
                   funct Mask(32, 224, 0, ext_call.return_data[12 len 20], sub_685a4605, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, ext_call.return_data[12 len 20], sub_685a4605, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    sub_685a4605 = 0
    stor154 = 1
}

function name() {
    if bool(stor213.length):
        if bool(stor213.length) == stor213.length.field_1 < 32:
            revert with 0, 34
        if bool(stor213.length):
            if bool(stor213.length) == stor213.length.field_1 < 32:
                revert with 0, 34
            if stor213.length.field_1:
                if 31 < stor213.length.field_1:
                    mem[128] = uint256(stor213.field_0)
                    idx = 128
                    s = 0
                    while stor213.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor213[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor213.length.field_1), data=mem[128 len ceil32(stor213.length.field_1)])
                mem[128] = 256 * stor213.length.field_8
        else:
            if bool(stor213.length) == stor213.length.field_1 < 32:
                revert with 0, 34
            if stor213.length.field_1:
                if 31 < stor213.length.field_1:
                    mem[128] = uint256(stor213.field_0)
                    idx = 128
                    s = 0
                    while stor213.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor213[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor213.length.field_1), data=mem[128 len ceil32(stor213.length.field_1)])
                mem[128] = 256 * stor213.length.field_8
        mem[ceil32(stor213.length.field_1) + 192 len ceil32(stor213.length.field_1)] = mem[128 len ceil32(stor213.length.field_1)]
        if ceil32(stor213.length.field_1) > stor213.length.field_1:
            mem[stor213.length.field_1 + ceil32(stor213.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor213.length.field_1), data=mem[128 len ceil32(stor213.length.field_1)], mem[(2 * ceil32(stor213.length.field_1)) + 192 len 2 * ceil32(stor213.length.field_1)]), 
    if bool(stor213.length) == stor213.length.field_1 < 32:
        revert with 0, 34
    if bool(stor213.length):
        if bool(stor213.length) == stor213.length.field_1 < 32:
            revert with 0, 34
        if stor213.length.field_1:
            if 31 < stor213.length.field_1:
                mem[128] = uint256(stor213.field_0)
                idx = 128
                s = 0
                while stor213.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor213[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor213.length % 128, data=mem[128 len ceil32(stor213.length.field_1)])
            mem[128] = 256 * stor213.length.field_8
    else:
        if bool(stor213.length) == stor213.length.field_1 < 32:
            revert with 0, 34
        if stor213.length.field_1:
            if 31 < stor213.length.field_1:
                mem[128] = uint256(stor213.field_0)
                idx = 128
                s = 0
                while stor213.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor213[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor213.length % 128, data=mem[128 len ceil32(stor213.length.field_1)])
            mem[128] = 256 * stor213.length.field_8
    mem[ceil32(stor213.length.field_1) + 192 len ceil32(stor213.length.field_1)] = mem[128 len ceil32(stor213.length.field_1)]
    if ceil32(stor213.length.field_1) > stor213.length.field_1:
        mem[stor213.length.field_1 + ceil32(stor213.length.field_1) + 192] = 0
    return Array(len=stor213.length % 128, data=mem[128 len ceil32(stor213.length.field_1)], mem[(2 * ceil32(stor213.length.field_1)) + 192 len 2 * ceil32(stor213.length.field_1)]), 
}

function sub_e5aa6d05(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    require ext_code.size(stor210)
    staticcall stor210.getFliquidator() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 4).length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[64] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 192
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 128] = 3
    mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 160] = 0x3131310000000000000000000000000000000000000000000000000000000000
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 215
        stor215[mem[(32 * idx) + 140 len 20]] = block.timestamp
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = stor153
        require ext_code.size(fujiERC1155Address)
        staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], stor153
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _86 = mem[_82]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 215
        if block.timestamp < stor215[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 17
        if _86 and block.timestamp - stor215[mem[(32 * idx) + 140 len 20]] > -1 / _86:
            revert with 0, 17
        if (block.timestamp * _86) - (stor215[mem[(32 * idx) + 140 len 20]] * _86) and uint64(stor206.field_0) > -1 / (block.timestamp * _86) - (stor215[mem[(32 * idx) + 140 len 20]] * _86):
            revert with 0, 17
        if not uint64(stor206.field_64):
            revert with 0, 18
        if s > !((block.timestamp * _86 * uint64(stor206.field_0)) - (stor215[mem[(32 * idx) + 140 len 20]] * _86 * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((block.timestamp * _86 * uint64(stor206.field_0)) - (stor215[mem[(32 * idx) + 140 len 20]] * _86 * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
        continue 
    if cd[36] < s:
        revert with 0, 17
    mem[mem[64] + 36] = address(stor152.field_0)
    mem[mem[64] + 68] = cd[36] - s
    _79 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    if stor101:
        revert with 0, 'Pausable: paused'
    delegate activeProviderAddress.0x35ed8ab8 with:
         gas gas_remaining - 5000 wei
        args mem[_79 + 36 len mem[_79] - 4]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_685a4605 > !s:
        revert with 0, 17
    sub_685a4605 += s
}

function getNeededCollateralFor(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x721adea7 with:
            gas gas_remaining wei
           args address(stor151), address(stor152.field_0), uint8(stor214.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor214.field_8):
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 0, 17
        if not arg2:
            return (arg1 * ext_call.return_data[0])
        if arg1 * ext_call.return_data[0] and uint64(stor205.field_0) > -1 / arg1 * ext_call.return_data[0]:
            revert with 0, 17
        if arg1 * ext_call.return_data[0] * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / arg1 * ext_call.return_data[0] * uint64(stor205.field_0):
            revert with 0, 17
        if not uint64(stor205.field_64):
            revert with 0, 18
        if not uint64(stor204.field_64):
            revert with 0, 18
        return (arg1 * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
    if bool(bool(uint8(stor214.field_8) < 78)) or bool(bool(uint8(stor214.field_8) < 32)):
        if 10^uint8(stor214.field_8) > -1:
            revert with 0, 17
        if arg1 and ext_call.return_data[0] > -1 / arg1:
            revert with 0, 17
        if not 10^uint8(stor214.field_8):
            revert with 0, 18
        if not arg2:
            return (arg1 * ext_call.return_data[0] / 10^uint8(stor214.field_8))
        if arg1 * ext_call.return_data[0] / 10^uint8(stor214.field_8) and uint64(stor205.field_0) > -1 / arg1 * ext_call.return_data[0] / 10^uint8(stor214.field_8):
            revert with 0, 17
        if arg1 * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / arg1 * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0):
            revert with 0, 17
        if not uint64(stor205.field_64):
            revert with 0, 18
        if not uint64(stor204.field_64):
            revert with 0, 18
        return (arg1 * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
    if var35005 > 1:
        s = var35001
        t = var35002
        u = var35005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if arg1 and ext_call.return_data[0] > -1 / arg1:
                    revert with 0, 17
                if not s * s * t:
                    revert with 0, 18
                if not arg2:
                    return (arg1 * ext_call.return_data[0] / s * s * t)
                if arg1 * ext_call.return_data[0] / s * s * t and uint64(stor205.field_0) > -1 / arg1 * ext_call.return_data[0] / s * s * t:
                    revert with 0, 17
                if arg1 * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / arg1 * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0):
                    revert with 0, 17
                if not uint64(stor205.field_64):
                    revert with 0, 18
                if not uint64(stor204.field_64):
                    revert with 0, 18
                return (arg1 * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if arg1 and ext_call.return_data[0] > -1 / arg1:
                revert with 0, 17
            if not s * s * s * t:
                revert with 0, 18
            if not arg2:
                return (arg1 * ext_call.return_data[0] / s * s * s * t)
            if arg1 * ext_call.return_data[0] / s * s * s * t and uint64(stor205.field_0) > -1 / arg1 * ext_call.return_data[0] / s * s * s * t:
                revert with 0, 17
            if arg1 * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / arg1 * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0):
                revert with 0, 17
            if not uint64(stor205.field_64):
                revert with 0, 18
            if not uint64(stor204.field_64):
                revert with 0, 18
            return (arg1 * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
        revert with 0, 17
    if var35002 > -1 / var35001:
        revert with 0, 17
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 0, 17
    if not var35001 * var35002:
        revert with 0, 18
    if not arg2:
        return (arg1 * ext_call.return_data[0] / var35001 * var35002)
    if arg1 * ext_call.return_data[0] / var35001 * var35002 and uint64(stor205.field_0) > -1 / arg1 * ext_call.return_data[0] / var35001 * var35002:
        revert with 0, 17
    if arg1 * ext_call.return_data[0] / var35001 * var35002 * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / arg1 * ext_call.return_data[0] / var35001 * var35002 * uint64(stor205.field_0):
        revert with 0, 17
    if not uint64(stor205.field_64):
        revert with 0, 18
    if not uint64(stor204.field_64):
        revert with 0, 18
    return (arg1 * ext_call.return_data[0] / var35001 * var35002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
}

function withdrawLiq(int256 arg1) {
    require calldata.size - 4 >= 32
    if stor154 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor154 = 2
    require ext_code.size(stor210)
    staticcall stor210.getFliquidator() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = 0x3131310000000000000000000000000000000000000000000000000000000000
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    mem[ceil32(return_data.size) + 196] = address(stor151)
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 160] = 68
    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor151)
    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xf3fef3a3(?????)
    if stor101:
        revert with 0, 'Pausable: paused'
    delegate activeProviderAddress.0xf3fef3a3 with:
         gas gas_remaining - 5000 wei
        args Mask(224, 0, stor151), uint32(stor151), arg1
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        if not address(stor151):
            call msg.sender with:
               value arg1 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                stor154 = 1
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                stor154 = 1
            mem[(4 * ceil32(return_data.size)) + 262] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 266] = 32
            mem[(4 * ceil32(return_data.size)) + 298] = 20
            mem[(4 * ceil32(return_data.size)) + 330] = 'Failed to send Ether'
            revert with memory
              from (4 * ceil32(return_data.size)) + 262
               len (5 * ceil32(return_data.size)) + 100
        if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
            call msg.sender with:
               value arg1 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                stor154 = 1
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                stor154 = 1
            mem[(4 * ceil32(return_data.size)) + 262] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 266] = 32
            mem[(4 * ceil32(return_data.size)) + 298] = 20
            mem[(4 * ceil32(return_data.size)) + 330] = 'Failed to send Ether'
            revert with memory
              from (4 * ceil32(return_data.size)) + 262
               len (5 * ceil32(return_data.size)) + 100
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = msg.sender
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg1
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if not ext_code.size(address(stor151)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
        call address(stor151) with:
           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
                if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor154 = 1
}

function executeSwitch(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require ext_code.size(stor210)
    staticcall stor210.getFlasher() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = 0x3131310000000000000000000000000000000000000000000000000000000000
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, '', 0
    if stor101:
        revert with 0, 'Pausable: paused'
    mem[ceil32(return_data.size) + 164] = address(stor152.field_0)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0x7d6af079 with:
            gas gas_remaining wei
           args address(stor152.field_0)
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    mem[(2 * ceil32(return_data.size)) + 196] = address(stor152.field_0)
    mem[(2 * ceil32(return_data.size)) + 228] = arg2
    mem[(2 * ceil32(return_data.size)) + 160] = 68
    mem[(2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor152.field_0)
    mem[(2 * ceil32(return_data.size)) + 192 len 4] = unknown_0x35ed8ab8(?????)
    if stor101:
        revert with 0, 'Pausable: paused'
    delegate activeProviderAddress.0x35ed8ab8 with:
         gas gas_remaining - 5000 wei
        args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg2
    mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(stor151)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0xed05ae78 with:
            gas gas_remaining wei
           args address(stor151)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 * arg2 / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(stor151)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28] = Mask(224, 0, stor151)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xf3fef3a3(?????)
    if stor101:
        revert with 0, 'Pausable: paused'
    delegate activeProviderAddress.0xf3fef3a3 with:
         gas gas_remaining - 5000 wei
        args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len (5 * ceil32(return_data.size)) + 64]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 398] = address(stor151)
    mem[(8 * ceil32(return_data.size)) + 430] = ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18
    mem[(8 * ceil32(return_data.size)) + 362] = (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
    mem[(8 * ceil32(return_data.size)) + 398 len 28] = Mask(224, 0, stor151)
    mem[(8 * ceil32(return_data.size)) + 394 len 4] = unknown_0x47e7ef24(?????)
    if stor101:
        revert with 0, 'Pausable: paused'
    delegate arg1.0x47e7ef24 with:
         gas gas_remaining - 5000 wei
        args mem[(8 * ceil32(return_data.size)) + 398 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
    mem[(8 * ceil32(return_data.size)) + 462] = return_data.size
    mem[(8 * ceil32(return_data.size)) + 494 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > !arg3:
        revert with 0, 17
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = address(stor152.field_0)
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 531] = arg2 + arg3
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 463] = 68
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 499 len 28] = Mask(224, 0, stor152.field_0)
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 495 len 4] = unknown_0x4b8a3529(?????)
    if stor101:
        revert with 0, 'Pausable: paused'
    delegate arg1.0x4b8a3529 with:
         gas gas_remaining - 5000 wei
        args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg2 + arg3
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 563] = return_data.size
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 595 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > !arg3:
        revert with 0, 17
    if not arg2 + arg3:
        emit Switch(address arg1, address arg2, uint256 arg3, uint256 arg4):
                    activeProviderAddress,
                    address(arg1),
                    arg2,
                    ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18,
                    mem[(12 * ceil32(return_data.size)) + 692 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
    else:
        if not address(stor152.field_0):
            call msg.sender with:
               value arg2 + arg3 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                'Failed to send Ether',
                                mem[(12 * ceil32(return_data.size)) + 664 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                emit Switch(address arg1, address arg2, uint256 arg3, uint256 arg4):
                            activeProviderAddress,
                            address(arg1),
                            arg2,
                            ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18,
                            mem[(12 * ceil32(return_data.size)) + 692 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
            else:
                if not ext_call.success:
                    revert with 0, 
                                'Failed to send Ether',
                                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 665 len 20 * ceil32(return_data.size)]
                emit Switch(address arg1, address arg2, uint256 arg3, uint256 arg4):
                            activeProviderAddress,
                            address(arg1),
                            arg2,
                            ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18,
                            mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 693 len 20 * ceil32(return_data.size)],
        else:
            if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
                call msg.sender with:
                   value arg2 + arg3 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    'Failed to send Ether',
                                    mem[(12 * ceil32(return_data.size)) + 664 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    emit Switch(address arg1, address arg2, uint256 arg3, uint256 arg4):
                                activeProviderAddress,
                                address(arg1),
                                arg2,
                                ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18,
                                mem[(12 * ceil32(return_data.size)) + 692 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                else:
                    if not ext_call.success:
                        revert with 0, 
                                    'Failed to send Ether',
                                    mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 665 len 20 * ceil32(return_data.size)]
                    emit Switch(address arg1, address arg2, uint256 arg3, uint256 arg4):
                                activeProviderAddress,
                                address(arg1),
                                arg2,
                                ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18,
                                mem[(12 * ceil32(return_data.size)) + ceil32(return_data.size) + 693 len 20 * ceil32(return_data.size)],
            else:
                mem[(12 * ceil32(return_data.size)) + 600] = msg.sender
                mem[(12 * ceil32(return_data.size)) + 632] = arg2 + arg3
                mem[(12 * ceil32(return_data.size)) + 564] = (19 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68
                mem[(12 * ceil32(return_data.size)) + 600 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(12 * ceil32(return_data.size)) + 596 len 4] = transfer(address arg1, uint256 arg2)
                mem[(12 * ceil32(return_data.size)) + 664] = 32
                mem[(12 * ceil32(return_data.size)) + 696] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(stor152.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(12 * ceil32(return_data.size)) + 728 len floor32((19 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 99)] = transfer(address arg1, uint256 arg2), msg.sender, arg2 + arg3, mem[(12 * ceil32(return_data.size)) + 664 len floor32((19 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 99) - 68]
                if floor32((19 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 99) > (19 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68:
                    mem[(31 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 796] = 0
                call address(stor152.field_0).mem[(12 * ceil32(return_data.size)) + 728 len 4] with:
                     gas gas_remaining wei
                    args mem[(12 * ceil32(return_data.size)) + 732 len (19 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(12 * ceil32(return_data.size)) + 760 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(12 * ceil32(return_data.size)) + 760] == bool(mem[(12 * ceil32(return_data.size)) + 760])
                        if not mem[(12 * ceil32(return_data.size)) + 760]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Switch(activeProviderAddress, address(arg1), arg2, ext_call.return_data[0] * 10^18 * arg2 / ext_call.return_data[0] / 10^18);
}

function borrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor154 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor154 = 2
    mem[100] = address(stor152.field_0)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0x7d6af079 with:
            gas gas_remaining wei
           args address(stor152.field_0)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args stor153, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = address(stor151)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0xed05ae78 with:
            gas gas_remaining wei
           args address(stor151)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args uint64(stor152.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = uint64(stor152.field_160)
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, uint64(stor152.field_160)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 132] = stor153
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, stor153
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(6 * ceil32(return_data.size)) + 100] = address(stor151)
    mem[(6 * ceil32(return_data.size)) + 132] = address(stor152.field_0)
    mem[(6 * ceil32(return_data.size)) + 164] = uint8(stor214.field_0)
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x721adea7 with:
            gas gas_remaining wei
           args address(stor151), address(stor152.field_0), uint8(stor214.field_0)
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor214.field_8):
        if arg1 + ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 + ext_call.return_data[0]:
            revert with 0, 17
        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) and uint64(stor205.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]):
            revert with 0, 17
        if (arg1 * ext_call.return_data[0] * uint64(stor205.field_0)) + (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0)) and uint64(stor204.field_0) > -1 / (arg1 * ext_call.return_data[0] * uint64(stor205.field_0)) + (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0)):
            revert with 0, 17
        if not uint64(stor205.field_64):
            revert with 0, 18
        if not uint64(stor204.field_64):
            revert with 0, 18
        if not arg1:
            revert with 0, '105', 0
        mem[(7 * ceil32(return_data.size)) + 96] = 3
        mem[(7 * ceil32(return_data.size)) + 128] = '105'
        if ext_call.return_data[0] <= (arg1 * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0)) + (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0)) / uint64(stor205.field_64) / uint64(stor204.field_64):
            revert with 0, '105', 0
    else:
        if bool(bool(uint8(stor214.field_8) < 78)) or bool(bool(uint8(stor214.field_8) < 32)):
            if 10^uint8(stor214.field_8) > -1:
                revert with 0, 17
            if arg1 + ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 + ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(stor214.field_8):
                revert with 0, 18
            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^uint8(stor214.field_8) and uint64(stor205.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^uint8(stor214.field_8):
                revert with 0, 17
            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^uint8(stor214.field_8) * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^uint8(stor214.field_8) * uint64(stor205.field_0):
                revert with 0, 17
            if not uint64(stor205.field_64):
                revert with 0, 18
            if not uint64(stor204.field_64):
                revert with 0, 18
            if not arg1:
                revert with 0, '105', 0
            mem[(7 * ceil32(return_data.size)) + 96] = 3
            mem[(7 * ceil32(return_data.size)) + 128] = '105'
            if ext_call.return_data[0] <= (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                revert with 0, '105', 0
        else:
            if var75005 > 1:
                s = var75001
                t = var75002
                u = var75005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if arg1 + ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 + ext_call.return_data[0]:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * t and uint64(stor205.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * t:
                            revert with 0, 17
                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * t * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * t * uint64(stor205.field_0):
                            revert with 0, 17
                        if not uint64(stor205.field_64):
                            revert with 0, 18
                        if not uint64(stor204.field_64):
                            revert with 0, 18
                        if not arg1:
                            mem[(7 * ceil32(return_data.size)) + 128] = '105'
                            mem[(7 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 164] = 32
                            idx = 0
                            while idx < 3:
                                mem[idx + (7 * ceil32(return_data.size)) + 228] = mem[idx + (7 * ceil32(return_data.size)) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 228 len 3], 0
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = '105'
                        if ext_call.return_data[0] <= (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                            mem[(7 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 164] = 32
                            idx = 0
                            while idx < 3:
                                mem[idx + (7 * ceil32(return_data.size)) + 228] = mem[idx + (7 * ceil32(return_data.size)) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 228 len 3], 0
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if arg1 + ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 + ext_call.return_data[0]:
                            revert with 0, 17
                        if not s * s * s * t:
                            revert with 0, 18
                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * s * t and uint64(stor205.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * s * t:
                            revert with 0, 17
                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * s * t * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * s * t * uint64(stor205.field_0):
                            revert with 0, 17
                        if not uint64(stor205.field_64):
                            revert with 0, 18
                        if not uint64(stor204.field_64):
                            revert with 0, 18
                        if not arg1:
                            mem[(7 * ceil32(return_data.size)) + 128] = '105'
                            mem[(7 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 164] = 32
                            idx = 0
                            while idx < 3:
                                mem[idx + (7 * ceil32(return_data.size)) + 228] = mem[idx + (7 * ceil32(return_data.size)) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 228 len 3], 0
                        mem[(7 * ceil32(return_data.size)) + 96] = 3
                        mem[(7 * ceil32(return_data.size)) + 128] = '105'
                        if ext_call.return_data[0] <= (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                            mem[(7 * ceil32(return_data.size)) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(7 * ceil32(return_data.size)) + 164] = 32
                            idx = 0
                            while idx < 3:
                                mem[idx + (7 * ceil32(return_data.size)) + 228] = mem[idx + (7 * ceil32(return_data.size)) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 228 len 3], 0
                    if block.timestamp < stor215[msg.sender]:
                        revert with 0, 17
                    if ext_call.return_data[0] and block.timestamp - stor215[msg.sender] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (block.timestamp * ext_call.return_data[0]) - (stor215[msg.sender] * ext_call.return_data[0]) and uint64(stor206.field_0) > -1 / (block.timestamp * ext_call.return_data[0]) - (stor215[msg.sender] * ext_call.return_data[0]):
                        revert with 0, 17
                    if not uint64(stor206.field_64):
                        revert with 0, 18
                    if (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 and 8760 * 24 * 3600 > -1 / (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if 8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 and uint64(stor206.field_0) > -1 / 8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if not uint64(stor206.field_64):
                        revert with 0, 18
                    if not arg1 + ext_call.return_data[0]:
                        revert with 0, 18
                    if block.timestamp < 8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 * uint64(stor206.field_0) / uint64(stor206.field_64) / arg1 + ext_call.return_data[0]:
                        revert with 0, 17
                    stor215[msg.sender] = block.timestamp - (8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 * uint64(stor206.field_0) / uint64(stor206.field_64) / arg1 + ext_call.return_data[0])
                    mem[(7 * ceil32(return_data.size)) + 292] = 0
                    require ext_code.size(fujiERC1155Address)
                    call fujiERC1155Address.0x731133e9 with:
                         gas gas_remaining wei
                        args msg.sender, stor153, arg1, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 196] = address(stor152.field_0)
                    mem[(7 * ceil32(return_data.size)) + 228] = arg1
                    mem[(7 * ceil32(return_data.size)) + 160] = 68
                    mem[(7 * ceil32(return_data.size)) + 192] = 0x4b8a352900000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor152.field_0)
                    if stor101:
                        revert with 0, 'Pausable: paused'
                    delegate activeProviderAddress.0x4b8a3529 with:
                         gas gas_remaining - 5000 wei
                        args 0 or Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg1
                    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
                    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not delegate.return_code == 1:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        emit Borrow(arg1, msg.sender, address(stor152.field_0));
                    else:
                        if not address(stor152.field_0):
                            call msg.sender with:
                               value arg1 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether'
                                emit Borrow(arg1, msg.sender, address(stor152.field_0));
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 362 len 5 * ceil32(return_data.size)]
                                emit Borrow(address arg1, address arg2, uint256 arg3):
                                            arg1,
                                            mem[(10 * ceil32(return_data.size)) + 294 len 5 * ceil32(return_data.size)],
                                            msg.sender,
                                            address(stor152.field_0),
                        else:
                            if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
                                call msg.sender with:
                                   value arg1 wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Failed to send Ether'
                                    emit Borrow(arg1, msg.sender, address(stor152.field_0));
                                else:
                                    if not ext_call.success:
                                        revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 362 len 5 * ceil32(return_data.size)]
                                    emit Borrow(address arg1, address arg2, uint256 arg3):
                                                arg1,
                                                mem[(10 * ceil32(return_data.size)) + 294 len 5 * ceil32(return_data.size)],
                                                msg.sender,
                                                address(stor152.field_0),
                            else:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                                if not ext_code.size(address(stor152.field_0)):
                                    revert with 0, 'Address: call to non-contract'
                                idx = 0
                                while idx < 68:
                                    mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]
                                    idx = idx + 32
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                                call address(stor152.field_0).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 4] with:
                                     gas gas_remaining wei
                                    args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len 64]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493]
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                        if not uint32(stor152.field_0), mem[132 len 28]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(10 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(10 * ceil32(return_data.size)) + 430] = 32
                                        idx = 0
                                        while idx < 32:
                                            mem[idx + (10 * ceil32(return_data.size)) + 494] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 32, 32, mem[(10 * ceil32(return_data.size)) + 494]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                                        if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit Borrow(arg1, msg.sender, address(stor152.field_0));
                    stor154 = 1
                revert with 0, 17
            if var75002 > -1 / var75001:
                revert with 0, 17
            if arg1 + ext_call.return_data[0] and ext_call.return_data[0] > -1 / arg1 + ext_call.return_data[0]:
                revert with 0, 17
            if not var75001 * var75002:
                revert with 0, 18
            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / var75001 * var75002 and uint64(stor205.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / var75001 * var75002:
                revert with 0, 17
            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / var75001 * var75002 * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / var75001 * var75002 * uint64(stor205.field_0):
                revert with 0, 17
            if not uint64(stor205.field_64):
                revert with 0, 18
            if not uint64(stor204.field_64):
                revert with 0, 18
            if not arg1:
                revert with 0, '105', 0
            mem[(7 * ceil32(return_data.size)) + 96] = 3
            mem[(7 * ceil32(return_data.size)) + 128] = '105'
            if ext_call.return_data[0] <= (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / var75001 * var75002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                revert with 0, '105', 0
    if block.timestamp < stor215[msg.sender]:
        revert with 0, 17
    if ext_call.return_data[0] and block.timestamp - stor215[msg.sender] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (block.timestamp * ext_call.return_data[0]) - (stor215[msg.sender] * ext_call.return_data[0]) and uint64(stor206.field_0) > -1 / (block.timestamp * ext_call.return_data[0]) - (stor215[msg.sender] * ext_call.return_data[0]):
        revert with 0, 17
    if not uint64(stor206.field_64):
        revert with 0, 18
    if (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 and 8760 * 24 * 3600 > -1 / (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
        revert with 0, 17
    if 8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 and uint64(stor206.field_0) > -1 / 8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
        revert with 0, 17
    if not uint64(stor206.field_64):
        revert with 0, 18
    if not arg1 + ext_call.return_data[0]:
        revert with 0, 18
    if block.timestamp < 8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 * uint64(stor206.field_0) / uint64(stor206.field_64) / arg1 + ext_call.return_data[0]:
        revert with 0, 17
    stor215[msg.sender] = block.timestamp - (8760 * 24 * 3600 * (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[msg.sender] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600 * uint64(stor206.field_0) / uint64(stor206.field_64) / arg1 + ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 292] = 0
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x731133e9 with:
         gas gas_remaining wei
        args msg.sender, stor153, arg1, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 196] = address(stor152.field_0)
    mem[(7 * ceil32(return_data.size)) + 228] = arg1
    mem[(7 * ceil32(return_data.size)) + 160] = 68
    mem[(7 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor152.field_0)
    mem[(7 * ceil32(return_data.size)) + 192 len 4] = unknown_0x4b8a3529(?????)
    if stor101:
        revert with 0, 'Pausable: paused'
    delegate activeProviderAddress.0x4b8a3529 with:
         gas gas_remaining - 5000 wei
        args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg1
    mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        emit Borrow(arg1, msg.sender, address(stor152.field_0));
    else:
        if not address(stor152.field_0):
            call msg.sender with:
               value arg1 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether'
                emit Borrow(arg1, msg.sender, address(stor152.field_0));
            else:
                if not ext_call.success:
                    revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 362 len 5 * ceil32(return_data.size)]
                emit Borrow(address arg1, address arg2, uint256 arg3):
                            arg1,
                            mem[(10 * ceil32(return_data.size)) + 294 len 5 * ceil32(return_data.size)],
                            msg.sender,
                            address(stor152.field_0),
        else:
            if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
                call msg.sender with:
                   value arg1 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Failed to send Ether'
                    emit Borrow(arg1, msg.sender, address(stor152.field_0));
                else:
                    if not ext_call.success:
                        revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 362 len 5 * ceil32(return_data.size)]
                    emit Borrow(address arg1, address arg2, uint256 arg3):
                                arg1,
                                mem[(10 * ceil32(return_data.size)) + 294 len 5 * ceil32(return_data.size)],
                                msg.sender,
                                address(stor152.field_0),
            else:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address arg1, uint256 arg2)
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(stor152.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call address(stor152.field_0) with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                        if not uint32(stor152.field_0), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Borrow(arg1, msg.sender, address(stor152.field_0));
    stor154 = 1
}

function payback(int256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = address(stor152.field_0)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0x7d6af079 with:
            gas gas_remaining wei
           args address(stor152.field_0)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args stor153, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = address(stor151)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0xed05ae78 with:
            gas gas_remaining wei
           args address(stor151)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args uint64(stor152.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = stor153
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, stor153
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < stor215[address(msg.sender)]:
        revert with 0, 17
    if ext_call.return_data[0] and block.timestamp - stor215[address(msg.sender)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (block.timestamp * ext_call.return_data[0]) - (stor215[address(msg.sender)] * ext_call.return_data[0]) and uint64(stor206.field_0) > -1 / (block.timestamp * ext_call.return_data[0]) - (stor215[address(msg.sender)] * ext_call.return_data[0]):
        revert with 0, 17
    if not uint64(stor206.field_64):
        revert with 0, 18
    if arg1 <= (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
        revert with 0, '106', 0
    mem[(4 * ceil32(return_data.size)) + 96] = 3
    mem[(4 * ceil32(return_data.size)) + 128] = '106'
    if ext_call.return_data[0] <= 0:
        revert with 0, '106', 0
    if arg1 >= 0:
        if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
            mem[(4 * ceil32(return_data.size)) + 160] = 3
            mem[(4 * ceil32(return_data.size)) + 192] = 0x3130330000000000000000000000000000000000000000000000000000000000
            if msg.value < arg1:
                revert with 0, '', 0
            if msg.value <= arg1:
                if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                    revert with 0, 17
                if stor101:
                    revert with 0, 'Pausable: paused'
                delegate activeProviderAddress.0x35ed8ab8 with:
                     gas gas_remaining - 5000 wei
                    args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                    revert with 0, 17
                require ext_code.size(fujiERC1155Address)
                call fujiERC1155Address.0xf5298aca with:
                     gas gas_remaining wei
                    args msg.sender, stor153, arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor215[msg.sender] = block.timestamp
                if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                    revert with 0, 17
                sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
            else:
                if msg.value < arg1:
                    revert with 0, 17
                if not msg.value - arg1:
                    if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if stor101:
                        revert with 0, 'Pausable: paused'
                    delegate activeProviderAddress.0x35ed8ab8 with:
                         gas gas_remaining - 5000 wei
                        args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                    if not delegate.return_code == 1:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                        revert with 0, 17
                    require ext_code.size(fujiERC1155Address)
                    call fujiERC1155Address.0xf5298aca with:
                         gas gas_remaining wei
                        args msg.sender, stor153, arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor215[msg.sender] = block.timestamp
                    if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                        revert with 0, 17
                    sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                    emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
                else:
                    if not address(stor152.field_0):
                        call msg.sender with:
                           value msg.value - arg1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to send Ether'
                        if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                            revert with 0, 17
                        if stor101:
                            revert with 0, 'Pausable: paused'
                        delegate activeProviderAddress.0x35ed8ab8 with:
                             gas gas_remaining - 5000 wei
                            args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                        if not return_data.size:
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, stor153, arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor215[msg.sender] = block.timestamp
                            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                revert with 0, 17
                            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                            emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 330] = msg.sender
                            mem[(8 * ceil32(return_data.size)) + 362] = stor153
                            mem[(8 * ceil32(return_data.size)) + 394] = arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 330 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor215[msg.sender] = block.timestamp
                            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                revert with 0, 17
                            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                            mem[(8 * ceil32(return_data.size)) + 326] = ext_call.return_data[0]
                            emit Payback(mem[(8 * ceil32(return_data.size)) + 326 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32], msg.sender, address(stor152.field_0));
                    else:
                        if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
                            call msg.sender with:
                               value msg.value - arg1 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0x35ed8ab8 with:
                                 gas gas_remaining - 5000 wei
                                args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                            if not return_data.size:
                                if not delegate.return_code == 1:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                    revert with 0, 17
                                require ext_code.size(fujiERC1155Address)
                                call fujiERC1155Address.0xf5298aca with:
                                     gas gas_remaining wei
                                    args msg.sender, stor153, arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor215[msg.sender] = block.timestamp
                                if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                    revert with 0, 17
                                sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                                emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
                            else:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not delegate.return_code == 1:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                    revert with 0, 17
                                mem[(8 * ceil32(return_data.size)) + 330] = msg.sender
                                mem[(8 * ceil32(return_data.size)) + 362] = stor153
                                mem[(8 * ceil32(return_data.size)) + 394] = arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                                require ext_code.size(fujiERC1155Address)
                                call fujiERC1155Address.0xf5298aca with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 330 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor215[msg.sender] = block.timestamp
                                if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                    revert with 0, 17
                                sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                                mem[(8 * ceil32(return_data.size)) + 326] = ext_call.return_data[0]
                                emit Payback(mem[(8 * ceil32(return_data.size)) + 326 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32], msg.sender, address(stor152.field_0));
                        else:
                            mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 292] = msg.value - arg1
                            mem[(4 * ceil32(return_data.size)) + 224] = 68
                            mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(4 * ceil32(return_data.size)) + 256 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(stor152.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 388 len 96] = transfer(address arg1, uint256 arg2), msg.sender, msg.value - arg1, 0
                            mem[(4 * ceil32(return_data.size)) + 456] = 0
                            call address(stor152.field_0) with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, msg.value - arg1, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, msg.value - arg1, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                    if not uint32(stor152.field_0), mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 420] == bool(mem[(4 * ceil32(return_data.size)) + 420])
                                    if not mem[(4 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0x35ed8ab8 with:
                                 gas gas_remaining - 5000 wei
                                args address(stor152.field_0), arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, stor153, arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor215[msg.sender] = block.timestamp
                            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                revert with 0, 17
                            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                            emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
        else:
            mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(address(stor152.field_0))
            staticcall address(stor152.field_0).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 160] = 3
            mem[(6 * ceil32(return_data.size)) + 192] = '107'
            if ext_call.return_data[0] < arg1:
                revert with 0, '107', 0
            mem[(6 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = arg1
            mem[(6 * ceil32(return_data.size)) + 224] = 100
            mem[(6 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 256 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[(6 * ceil32(return_data.size)) + 356] = 32
            mem[(6 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(stor152.field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 420 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
            mem[(6 * ceil32(return_data.size)) + 520] = 0
            call address(stor152.field_0) with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                    if not uint32(stor152.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 452] == bool(mem[(6 * ceil32(return_data.size)) + 452])
                    if not mem[(6 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                revert with 0, 17
            if stor101:
                revert with 0, 'Pausable: paused'
            delegate activeProviderAddress.0x35ed8ab8 with:
                 gas gas_remaining - 5000 wei
                args address(stor152.field_0), arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                revert with 0, 17
            require ext_code.size(fujiERC1155Address)
            call fujiERC1155Address.0xf5298aca with:
                 gas gas_remaining wei
                args msg.sender, stor153, arg1 - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor215[msg.sender] = block.timestamp
            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                revert with 0, 17
            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
            emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
    else:
        if ext_call.return_data[0] > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
            revert with 0, 17
        if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
            mem[(4 * ceil32(return_data.size)) + 160] = 3
            mem[(4 * ceil32(return_data.size)) + 192] = 0x3130330000000000000000000000000000000000000000000000000000000000
            if msg.value < ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                revert with 0, '', 0
            if msg.value <= ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                    revert with 0, 17
                if stor101:
                    revert with 0, 'Pausable: paused'
                delegate activeProviderAddress.0x35ed8ab8 with:
                     gas gas_remaining - 5000 wei
                    args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), ext_call.return_data[0]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                    revert with 0, 17
                require ext_code.size(fujiERC1155Address)
                call fujiERC1155Address.0xf5298aca with:
                     gas gas_remaining wei
                    args msg.sender, stor153, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor215[msg.sender] = block.timestamp
                if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                    revert with 0, 17
                sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
            else:
                if msg.value < ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                    revert with 0, 17
                if not msg.value - ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                    if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                        revert with 0, 17
                    if stor101:
                        revert with 0, 'Pausable: paused'
                    delegate activeProviderAddress.0x35ed8ab8 with:
                         gas gas_remaining - 5000 wei
                        args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), ext_call.return_data[0]
                    if not delegate.return_code == 1:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                        revert with 0, 17
                    require ext_code.size(fujiERC1155Address)
                    call fujiERC1155Address.0xf5298aca with:
                         gas gas_remaining wei
                        args msg.sender, stor153, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor215[msg.sender] = block.timestamp
                    if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                        revert with 0, 17
                    sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                    emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
                else:
                    if not address(stor152.field_0):
                        call msg.sender with:
                           value msg.value - ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to send Ether'
                        if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                            revert with 0, 17
                        if stor101:
                            revert with 0, 'Pausable: paused'
                        delegate activeProviderAddress.0x35ed8ab8 with:
                             gas gas_remaining - 5000 wei
                            args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), ext_call.return_data[0]
                        if not return_data.size:
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, stor153, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor215[msg.sender] = block.timestamp
                            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                revert with 0, 17
                            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                            emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
                        else:
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            mem[(8 * ceil32(return_data.size)) + 330] = msg.sender
                            mem[(8 * ceil32(return_data.size)) + 362] = stor153
                            mem[(8 * ceil32(return_data.size)) + 394] = ext_call.return_data[0]
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args mem[(8 * ceil32(return_data.size)) + 330 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor215[msg.sender] = block.timestamp
                            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                revert with 0, 17
                            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                            mem[(8 * ceil32(return_data.size)) + 326] = ext_call.return_data[0]
                            emit Payback(mem[(8 * ceil32(return_data.size)) + 326 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32], msg.sender, address(stor152.field_0));
                    else:
                        if address(stor152.field_0) == 0xffffffffffffffffffffffffffffffffffffffff:
                            call msg.sender with:
                               value msg.value - ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0x35ed8ab8 with:
                                 gas gas_remaining - 5000 wei
                                args Mask(224, 0, stor152.field_0), uint32(stor152.field_0), ext_call.return_data[0]
                            if not return_data.size:
                                if not delegate.return_code == 1:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                    revert with 0, 17
                                require ext_code.size(fujiERC1155Address)
                                call fujiERC1155Address.0xf5298aca with:
                                     gas gas_remaining wei
                                    args msg.sender, stor153, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor215[msg.sender] = block.timestamp
                                if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                    revert with 0, 17
                                sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                                emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
                            else:
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not delegate.return_code == 1:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                    revert with 0, 17
                                mem[(8 * ceil32(return_data.size)) + 330] = msg.sender
                                mem[(8 * ceil32(return_data.size)) + 362] = stor153
                                mem[(8 * ceil32(return_data.size)) + 394] = ext_call.return_data[0]
                                require ext_code.size(fujiERC1155Address)
                                call fujiERC1155Address.0xf5298aca with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 330 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor215[msg.sender] = block.timestamp
                                if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                    revert with 0, 17
                                sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                                mem[(8 * ceil32(return_data.size)) + 326] = ext_call.return_data[0]
                                emit Payback(mem[(8 * ceil32(return_data.size)) + 326 len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32], msg.sender, address(stor152.field_0));
                        else:
                            mem[(4 * ceil32(return_data.size)) + 260] = msg.sender
                            mem[(4 * ceil32(return_data.size)) + 292] = msg.value - ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
                            mem[(4 * ceil32(return_data.size)) + 224] = 68
                            mem[(4 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(4 * ceil32(return_data.size)) + 256 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(4 * ceil32(return_data.size)) + 324] = 32
                            mem[(4 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(stor152.field_0)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(4 * ceil32(return_data.size)) + 388 len 96] = transfer(address arg1, uint256 arg2), msg.sender, msg.value - ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600), 0
                            mem[(4 * ceil32(return_data.size)) + 456] = 0
                            call address(stor152.field_0) with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, msg.value - ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600), 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, msg.value - ext_call.return_data[0] - ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600), 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                    if not uint32(stor152.field_0), mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(4 * ceil32(return_data.size)) + 420] == bool(mem[(4 * ceil32(return_data.size)) + 420])
                                    if not mem[(4 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0x35ed8ab8 with:
                                 gas gas_remaining - 5000 wei
                                args address(stor152.field_0), ext_call.return_data[0]
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                                revert with 0, 17
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, stor153, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            stor215[msg.sender] = block.timestamp
                            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                                revert with 0, 17
                            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
                            emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
        else:
            mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(address(stor152.field_0))
            staticcall address(stor152.field_0).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 160] = 3
            mem[(6 * ceil32(return_data.size)) + 192] = '107'
            if ext_call.return_data[0] < ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                revert with 0, '107', 0
            mem[(6 * ceil32(return_data.size)) + 260] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 292] = this.address
            mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600)
            mem[(6 * ceil32(return_data.size)) + 224] = 100
            mem[(6 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 256 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[(6 * ceil32(return_data.size)) + 356] = 32
            mem[(6 * ceil32(return_data.size)) + 388] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(stor152.field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 420 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600), 0
            mem[(6 * ceil32(return_data.size)) + 520] = 0
            call address(stor152.field_0) with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600), 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600), 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                    if not uint32(stor152.field_0), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 452] == bool(mem[(6 * ceil32(return_data.size)) + 452])
                    if not mem[(6 * ceil32(return_data.size)) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                revert with 0, 17
            if stor101:
                revert with 0, 'Pausable: paused'
            delegate activeProviderAddress.0x35ed8ab8 with:
                 gas gas_remaining - 5000 wei
                args address(stor152.field_0), ext_call.return_data[0]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] + ((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600) < (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600:
                revert with 0, 17
            require ext_code.size(fujiERC1155Address)
            call fujiERC1155Address.0xf5298aca with:
                 gas gas_remaining wei
                args msg.sender, stor153, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor215[msg.sender] = block.timestamp
            if sub_685a4605 > !((block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600):
                revert with 0, 17
            sub_685a4605 += (block.timestamp * ext_call.return_data[0] * uint64(stor206.field_0)) - (stor215[address(msg.sender)] * ext_call.return_data[0] * uint64(stor206.field_0)) / uint64(stor206.field_64) / 8760 * 24 * 3600
            emit Payback(ext_call.return_data[0], msg.sender, address(stor152.field_0));
}

function withdraw(int256 arg1) {
    require calldata.size - 4 >= 32
    if stor154 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor154 = 2
    mem[100] = address(stor152.field_0)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0x7d6af079 with:
            gas gas_remaining wei
           args address(stor152.field_0)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args stor153, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = address(stor151)
    require ext_code.size(activeProviderAddress)
    staticcall activeProviderAddress.0xed05ae78 with:
            gas gas_remaining wei
           args address(stor151)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(fujiERC1155Address)
    call fujiERC1155Address.0x5eb62f63 with:
         gas gas_remaining wei
        args uint64(stor152.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = uint64(stor152.field_160)
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, uint64(stor152.field_160)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = 3
    mem[(4 * ceil32(return_data.size)) + 128] = '112'
    if ext_call.return_data[0] <= 0:
        revert with 0, '112', 0
    mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 196] = stor153
    require ext_code.size(fujiERC1155Address)
    staticcall fujiERC1155Address.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, stor153
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 164] = address(stor151)
    mem[(6 * ceil32(return_data.size)) + 196] = address(stor152.field_0)
    mem[(6 * ceil32(return_data.size)) + 228] = uint8(stor214.field_0)
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x721adea7 with:
            gas gas_remaining wei
           args address(stor151), address(stor152.field_0), uint8(stor214.field_0)
    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor214.field_8):
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] and uint64(stor205.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0):
            revert with 0, 17
        if not uint64(stor205.field_64):
            revert with 0, 18
        if not uint64(stor204.field_64):
            revert with 0, 18
        if arg1 >= 0:
            if not arg1:
                revert with 0, '104', 0
            if ext_call.return_data[0] < arg1:
                revert with 0, 17
            mem[(7 * ceil32(return_data.size)) + 160] = 3
            mem[(7 * ceil32(return_data.size)) + 192] = '104'
            if ext_call.return_data[0] - arg1 < ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                revert with 0, '104', 0
            require ext_code.size(fujiERC1155Address)
            call fujiERC1155Address.0xf5298aca with:
                 gas gas_remaining wei
                args msg.sender, uint64(stor152.field_0), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
            mem[(7 * ceil32(return_data.size)) + 292] = arg1
            mem[(7 * ceil32(return_data.size)) + 224] = 68
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor151)
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xf3fef3a3(?????)
            if stor101:
                revert with 0, 'Pausable: paused'
            delegate activeProviderAddress.0xf3fef3a3 with:
                 gas gas_remaining - 5000 wei
                args Mask(224, 0, stor151), uint32(stor151), arg1
            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg1:
                emit Withdraw(arg1, msg.sender, address(stor151));
            else:
                if not address(stor151):
                    call msg.sender with:
                       value arg1 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Failed to send Ether'
                        emit Withdraw(arg1, msg.sender, address(stor151));
                    else:
                        if not ext_call.success:
                            revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                        emit Withdraw(address arg1, address arg2, uint256 arg3):
                                      arg1,
                                      mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                      msg.sender,
                                      address(stor151),
                else:
                    if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                        call msg.sender with:
                           value arg1 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            emit Withdraw(arg1, msg.sender, address(stor151));
                        else:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                          arg1,
                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                          msg.sender,
                                          address(stor151),
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(stor151)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(stor151) with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                if not uint32(stor152.field_0), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Withdraw(arg1, msg.sender, address(stor151));
        else:
            if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                revert with 0, 17
            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                revert with 0, '104', 0
            if ext_call.return_data[0] < ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                revert with 0, 17
            mem[(7 * ceil32(return_data.size)) + 160] = 3
            mem[(7 * ceil32(return_data.size)) + 192] = '104'
            if ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64) < ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                revert with 0, '104', 0
            require ext_code.size(fujiERC1155Address)
            call fujiERC1155Address.0xf5298aca with:
                 gas gas_remaining wei
                args msg.sender, uint64(stor152.field_0), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
            mem[(7 * ceil32(return_data.size)) + 224] = 68
            mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor151)
            mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xf3fef3a3(?????)
            if stor101:
                revert with 0, 'Pausable: paused'
            delegate activeProviderAddress.0xf3fef3a3 with:
                 gas gas_remaining - 5000 wei
                args Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
            else:
                if not address(stor151):
                    call msg.sender with:
                       value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Failed to send Ether'
                        emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                    else:
                        if not ext_call.success:
                            revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                        emit Withdraw(address arg1, address arg2, uint256 arg3):
                                      ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                      mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                      msg.sender,
                                      address(stor151),
                else:
                    if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                        call msg.sender with:
                           value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                        else:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                          ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                          msg.sender,
                                          address(stor151),
                    else:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = transfer(address arg1, uint256 arg2)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(stor151)):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call address(stor151) with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                if not uint32(stor152.field_0), mem[132 len 28]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
    else:
        if bool(bool(uint8(stor214.field_8) < 78)) or bool(bool(uint8(stor214.field_8) < 32)):
            if 10^uint8(stor214.field_8) > -1:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^uint8(stor214.field_8):
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) and uint64(stor205.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0):
                revert with 0, 17
            if not uint64(stor205.field_64):
                revert with 0, 18
            if not uint64(stor204.field_64):
                revert with 0, 18
            if arg1 >= 0:
                if not arg1:
                    revert with 0, '104', 0
                if ext_call.return_data[0] < arg1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 160] = 3
                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                if ext_call.return_data[0] - arg1 < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                    revert with 0, '104', 0
                require ext_code.size(fujiERC1155Address)
                call fujiERC1155Address.0xf5298aca with:
                     gas gas_remaining wei
                    args msg.sender, uint64(stor152.field_0), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                mem[(7 * ceil32(return_data.size)) + 292] = arg1
                mem[(7 * ceil32(return_data.size)) + 224] = 68
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor151)
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xf3fef3a3(?????)
                if stor101:
                    revert with 0, 'Pausable: paused'
                delegate activeProviderAddress.0xf3fef3a3 with:
                     gas gas_remaining - 5000 wei
                    args Mask(224, 0, stor151), uint32(stor151), arg1
                mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg1:
                    emit Withdraw(arg1, msg.sender, address(stor151));
                else:
                    if not address(stor151):
                        call msg.sender with:
                           value arg1 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            emit Withdraw(arg1, msg.sender, address(stor151));
                        else:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                          arg1,
                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                          msg.sender,
                                          address(stor151),
                    else:
                        if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                            call msg.sender with:
                               value arg1 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether'
                                emit Withdraw(arg1, msg.sender, address(stor151));
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                emit Withdraw(address arg1, address arg2, uint256 arg3):
                                              arg1,
                                              mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                              msg.sender,
                                              address(stor151),
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(stor151)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                            call address(stor151) with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                    if not uint32(stor152.field_0), mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                    if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit Withdraw(arg1, msg.sender, address(stor151));
            else:
                if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                    revert with 0, 17
                if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                    revert with 0, '104', 0
                if ext_call.return_data[0] < ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 160] = 3
                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64) < ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                    revert with 0, '104', 0
                require ext_code.size(fujiERC1155Address)
                call fujiERC1155Address.0xf5298aca with:
                     gas gas_remaining wei
                    args msg.sender, uint64(stor152.field_0), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                mem[(7 * ceil32(return_data.size)) + 224] = 68
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor151)
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xf3fef3a3(?????)
                if stor101:
                    revert with 0, 'Pausable: paused'
                delegate activeProviderAddress.0xf3fef3a3 with:
                     gas gas_remaining - 5000 wei
                    args Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                    emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                else:
                    if not address(stor151):
                        call msg.sender with:
                           value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                        else:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                          ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                          msg.sender,
                                          address(stor151),
                    else:
                        if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                            call msg.sender with:
                               value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether'
                                emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                emit Withdraw(address arg1, address arg2, uint256 arg3):
                                              ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                              mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                              msg.sender,
                                              address(stor151),
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(stor151)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                            call address(stor151) with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                    if not uint32(stor152.field_0), mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                    if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(stor214.field_8) * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
        else:
            if var73005 > 1:
                s = var73001
                t = var73002
                u = var73005
                while s <= -1 / s:
                    if not bool(u):
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = t
                            u = uint255(u) * 0.5
                            continue 
                        if t > -1 / s * s:
                            revert with 0, 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not s * s * t:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * s * t and uint64(stor205.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * s * t:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0):
                            revert with 0, 17
                        if not uint64(stor205.field_64):
                            revert with 0, 18
                        if not uint64(stor204.field_64):
                            revert with 0, 18
                        if arg1 >= 0:
                            if not arg1:
                                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            if ext_call.return_data[0] < arg1:
                                revert with 0, 17
                            mem[(7 * ceil32(return_data.size)) + 160] = 3
                            mem[(7 * ceil32(return_data.size)) + 192] = '104'
                            if ext_call.return_data[0] - arg1 < ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, uint64(stor152.field_0), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                            mem[(7 * ceil32(return_data.size)) + 292] = arg1
                            mem[(7 * ceil32(return_data.size)) + 224] = 68
                            mem[(7 * ceil32(return_data.size)) + 256] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor151)
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0xf3fef3a3 with:
                                 gas gas_remaining - 5000 wei
                                args 0 or Mask(224, 0, stor151), uint32(stor151), arg1
                            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg1:
                                emit Withdraw(arg1, msg.sender, address(stor151));
                            else:
                                if not address(stor151):
                                    call msg.sender with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether'
                                        emit Withdraw(arg1, msg.sender, address(stor151));
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                        emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                      arg1,
                                                      mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      address(stor151),
                                else:
                                    if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                                        call msg.sender with:
                                           value arg1 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether'
                                            emit Withdraw(arg1, msg.sender, address(stor151));
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                          arg1,
                                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          address(stor151),
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(address(stor151)):
                                            revert with 0, 'Address: call to non-contract'
                                        idx = 0
                                        while idx < 68:
                                            mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]
                                            idx = idx + 32
                                            continue 
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                        call address(stor151).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557]
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                                if not uint32(stor152.field_0), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(10 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 494] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (10 * ceil32(return_data.size)) + 558] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(10 * ceil32(return_data.size)) + 558]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        emit Withdraw(arg1, msg.sender, address(stor151));
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                                revert with 0, 17
                            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            if ext_call.return_data[0] < ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                                revert with 0, 17
                            mem[(7 * ceil32(return_data.size)) + 160] = 3
                            mem[(7 * ceil32(return_data.size)) + 192] = '104'
                            if ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64) < ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, uint64(stor152.field_0), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            mem[(7 * ceil32(return_data.size)) + 224] = 68
                            mem[(7 * ceil32(return_data.size)) + 256] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor151)
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0xf3fef3a3 with:
                                 gas gas_remaining - 5000 wei
                                args 0 or Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                                emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                            else:
                                if not address(stor151):
                                    call msg.sender with:
                                       value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether'
                                        emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                        emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                      ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                                      mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      address(stor151),
                                else:
                                    if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                                        call msg.sender with:
                                           value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether'
                                            emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                          ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          address(stor151),
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(address(stor151)):
                                            revert with 0, 'Address: call to non-contract'
                                        idx = 0
                                        while idx < 68:
                                            mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]
                                            idx = idx + 32
                                            continue 
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                        call address(stor151).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557]
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                                if not uint32(stor152.field_0), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(10 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 494] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (10 * ceil32(return_data.size)) + 558] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(10 * ceil32(return_data.size)) + 558]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                    else:
                        if uint255(u) * 0.5 > 1:
                            s = s * s
                            t = s * t
                            u = uint255(u) * 0.5
                            continue 
                        if s * t > -1 / s * s:
                            revert with 0, 17
                        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not s * s * s * t:
                            revert with 0, 18
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t and uint64(stor205.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0):
                            revert with 0, 17
                        if not uint64(stor205.field_64):
                            revert with 0, 18
                        if not uint64(stor204.field_64):
                            revert with 0, 18
                        if arg1 >= 0:
                            if not arg1:
                                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            if ext_call.return_data[0] < arg1:
                                revert with 0, 17
                            mem[(7 * ceil32(return_data.size)) + 160] = 3
                            mem[(7 * ceil32(return_data.size)) + 192] = '104'
                            if ext_call.return_data[0] - arg1 < ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, uint64(stor152.field_0), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                            mem[(7 * ceil32(return_data.size)) + 292] = arg1
                            mem[(7 * ceil32(return_data.size)) + 224] = 68
                            mem[(7 * ceil32(return_data.size)) + 256] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor151)
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0xf3fef3a3 with:
                                 gas gas_remaining - 5000 wei
                                args 0 or Mask(224, 0, stor151), uint32(stor151), arg1
                            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not arg1:
                                emit Withdraw(arg1, msg.sender, address(stor151));
                            else:
                                if not address(stor151):
                                    call msg.sender with:
                                       value arg1 wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether'
                                        emit Withdraw(arg1, msg.sender, address(stor151));
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                        emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                      arg1,
                                                      mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      address(stor151),
                                else:
                                    if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                                        call msg.sender with:
                                           value arg1 wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether'
                                            emit Withdraw(arg1, msg.sender, address(stor151));
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                          arg1,
                                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          address(stor151),
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(address(stor151)):
                                            revert with 0, 'Address: call to non-contract'
                                        idx = 0
                                        while idx < 68:
                                            mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]
                                            idx = idx + 32
                                            continue 
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                        call address(stor151).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557]
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                                if not uint32(stor152.field_0), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(10 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 494] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (10 * ceil32(return_data.size)) + 558] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(10 * ceil32(return_data.size)) + 558]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        emit Withdraw(arg1, msg.sender, address(stor151));
                        else:
                            if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                                revert with 0, 17
                            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            if ext_call.return_data[0] < ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                                revert with 0, 17
                            mem[(7 * ceil32(return_data.size)) + 160] = 3
                            mem[(7 * ceil32(return_data.size)) + 192] = '104'
                            if ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64) < ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                                mem[(7 * ceil32(return_data.size)) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(7 * ceil32(return_data.size)) + 228] = 32
                                idx = 0
                                while idx < 3:
                                    mem[idx + (7 * ceil32(return_data.size)) + 292] = mem[idx + (7 * ceil32(return_data.size)) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 3, mem[(7 * ceil32(return_data.size)) + 292 len 3], 0
                            require ext_code.size(fujiERC1155Address)
                            call fujiERC1155Address.0xf5298aca with:
                                 gas gas_remaining wei
                                args msg.sender, uint64(stor152.field_0), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                            mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            mem[(7 * ceil32(return_data.size)) + 224] = 68
                            mem[(7 * ceil32(return_data.size)) + 256] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, stor151)
                            if stor101:
                                revert with 0, 'Pausable: paused'
                            delegate activeProviderAddress.0xf3fef3a3 with:
                                 gas gas_remaining - 5000 wei
                                args 0 or Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                            mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not delegate.return_code == 1:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                                emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                            else:
                                if not address(stor151):
                                    call msg.sender with:
                                       value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether'
                                        emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                        emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                      ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                                      mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                      msg.sender,
                                                      address(stor151),
                                else:
                                    if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                                        call msg.sender with:
                                           value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                                             gas gas_remaining wei
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether'
                                            emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                                        else:
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                                          ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                                          msg.sender,
                                                          address(stor151),
                                    else:
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                                        if not ext_code.size(address(stor151)):
                                            revert with 0, 'Address: call to non-contract'
                                        idx = 0
                                        while idx < 68:
                                            mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357]
                                            idx = idx + 32
                                            continue 
                                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                                        call address(stor151).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 4] with:
                                             gas gas_remaining wei
                                            args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493 len 64]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if ext_call.return_data[0]:
                                                    revert with memory
                                                      from 128
                                                       len ext_call.return_data[0]
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557]
                                            if ext_call.return_data[0]:
                                                require ext_call.return_data[0] >= 32
                                                require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                                if not uint32(stor152.field_0), mem[132 len 28]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = return_data.size
                                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[(10 * ceil32(return_data.size)) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(10 * ceil32(return_data.size)) + 494] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + (10 * ceil32(return_data.size)) + 558] = mem[idx + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[(10 * ceil32(return_data.size)) + 558]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                                if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / s * s * s * t * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                    stor154 = 1
                revert with 0, 17
            if var73002 > -1 / var73001:
                revert with 0, 17
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not var73001 * var73002:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 and uint64(stor205.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) and uint64(stor204.field_0) > -1 / ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0):
                revert with 0, 17
            if not uint64(stor205.field_64):
                revert with 0, 18
            if not uint64(stor204.field_64):
                revert with 0, 18
            if arg1 >= 0:
                if not arg1:
                    revert with 0, '104', 0
                if ext_call.return_data[0] < arg1:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 160] = 3
                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                if ext_call.return_data[0] - arg1 < ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                    revert with 0, '104', 0
                require ext_code.size(fujiERC1155Address)
                call fujiERC1155Address.0xf5298aca with:
                     gas gas_remaining wei
                    args msg.sender, uint64(stor152.field_0), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                mem[(7 * ceil32(return_data.size)) + 292] = arg1
                mem[(7 * ceil32(return_data.size)) + 224] = 68
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor151)
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xf3fef3a3(?????)
                if stor101:
                    revert with 0, 'Pausable: paused'
                delegate activeProviderAddress.0xf3fef3a3 with:
                     gas gas_remaining - 5000 wei
                    args Mask(224, 0, stor151), uint32(stor151), arg1
                mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                if not arg1:
                    emit Withdraw(arg1, msg.sender, address(stor151));
                else:
                    if not address(stor151):
                        call msg.sender with:
                           value arg1 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            emit Withdraw(arg1, msg.sender, address(stor151));
                        else:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                          arg1,
                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                          msg.sender,
                                          address(stor151),
                    else:
                        if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                            call msg.sender with:
                               value arg1 wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether'
                                emit Withdraw(arg1, msg.sender, address(stor151));
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                emit Withdraw(address arg1, address arg2, uint256 arg3):
                                              arg1,
                                              mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                              msg.sender,
                                              address(stor151),
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg1
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(stor151)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                            call address(stor151) with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                    if not uint32(stor152.field_0), mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                    if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit Withdraw(arg1, msg.sender, address(stor151));
            else:
                if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                    revert with 0, 17
                if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                    revert with 0, '104', 0
                if ext_call.return_data[0] < ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 160] = 3
                mem[(7 * ceil32(return_data.size)) + 192] = '104'
                if ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64) < ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64):
                    revert with 0, '104', 0
                require ext_code.size(fujiERC1155Address)
                call fujiERC1155Address.0xf5298aca with:
                     gas gas_remaining wei
                    args msg.sender, uint64(stor152.field_0), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + 260] = address(stor151)
                mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                mem[(7 * ceil32(return_data.size)) + 224] = 68
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor151)
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = unknown_0xf3fef3a3(?????)
                if stor101:
                    revert with 0, 'Pausable: paused'
                delegate activeProviderAddress.0xf3fef3a3 with:
                     gas gas_remaining - 5000 wei
                    args Mask(224, 0, stor151), uint32(stor151), ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                mem[(7 * ceil32(return_data.size)) + 324] = return_data.size
                mem[(7 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                if not ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)):
                    emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                else:
                    if not address(stor151):
                        call msg.sender with:
                           value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether'
                            emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                        else:
                            if not ext_call.success:
                                revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                            emit Withdraw(address arg1, address arg2, uint256 arg3):
                                          ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                          mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                          msg.sender,
                                          address(stor151),
                    else:
                        if address(stor151) == 0xffffffffffffffffffffffffffffffffffffffff:
                            call msg.sender with:
                               value ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether'
                                emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
                            else:
                                if not ext_call.success:
                                    revert with 0, 'Failed to send Ether', mem[(10 * ceil32(return_data.size)) + 426 len 5 * ceil32(return_data.size)]
                                emit Withdraw(address arg1, address arg2, uint256 arg3):
                                              ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)),
                                              mem[(10 * ceil32(return_data.size)) + 358 len 5 * ceil32(return_data.size)],
                                              msg.sender,
                                              address(stor151),
                        else:
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = msg.sender
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 68
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357 len 4] = transfer(address arg1, uint256 arg2)
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 32
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(stor151)):
                                revert with 0, 'Address: call to non-contract'
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0
                            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                            call address(stor151) with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64)), 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require uint32(stor152.field_0), mem[132 len 28] == bool(uint32(stor152.field_0), mem[132 len 28])
                                    if not uint32(stor152.field_0), mem[132 len 28]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521])
                                    if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit Withdraw((ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / var73001 * var73002 * uint64(stor205.field_0) * uint64(stor204.field_0) / uint64(stor205.field_64) / uint64(stor204.field_64))), msg.sender, address(stor151));
    stor154 = 1
}



}
