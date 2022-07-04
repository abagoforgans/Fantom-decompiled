contract main {




// =====================  Runtime code  =====================


#
#  - whitelistMultiple(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8)
#
const contractNativeCoinBalance = eth.balance(this.address)


address stor0;
uint16 stor1;
address stor1; offset 16
address stor1;
address stor2;
mapping of uint8 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
uint8 stor5; offset 24
uint16 stor5; offset 32
uint256 stor5; offset 24
uint256 stor6;
uint256 stor7;
mapping of uint8 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint256 stor17;
uint256 stor18;
address stor19;
uint8 stor20; offset 160
address stor20;

function isOG(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyFlavorsToken => caller not flavorsToken'
    return bool(stor8[address(arg1)])
}

function _fallback() payable {
    revert
}

function getAddresses() {
    return this.address, stor19, address(stor20.field_0), stor0, address(stor1.field_0)
}

function forceClaimsEnabledBlockNumber_OICM(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    stor18 = arg1
}

function transferICM(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    address(stor1.field_0) = arg1
}

function grantAuthorization(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    stor4[address(arg1)] = 1
}

function revokeAuthorization(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    stor4[address(arg1)] = 0
}

function toggleContributions_OICM() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    if uint8(stor5.field_16):
        uint8(stor5.field_16) = 0
    else:
        uint8(stor5.field_16) = 1
}

function enableClaims_OFT() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyFlavorsToken => caller not flavorsToken'
    if uint8(stor20.field_160):
        stor18 = block.number
        uint8(stor20.field_160) = 0
    uint8(stor5.field_8) = 1
}

function acceptIceCreamMan() {
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyPendingIceCreamMan => caller not pendingICM'
    stor0 = address(stor1.field_0)
    uint16(stor1.field_0) = 57005
    Mask(144, 0, stor1.field_16) = 0
}

function setUseTokensInContract(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    Mask(232, 0, stor5.field_24) = Mask(232, 0, arg1)
}

function contractTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function toggleClaims_OICM() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    if uint8(stor20.field_160):
        stor18 = block.number
        uint8(stor20.field_160) = 0
    if uint8(stor5.field_8):
        uint8(stor5.field_8) = 0
    else:
        uint8(stor5.field_8) = 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor5.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PRESALE FLV: initialize => Already Initialized!'
    uint16(stor1.field_0) = 57005
    Mask(144, 0, stor1.field_16) = 0
    stor0 = arg1
    stor4[address(arg1)] = 1
    stor4[this.address] = 1
    uint8(stor5.field_0) = 1
}

function getInfo() {
    if not uint8(stor5.field_8):
        return stor18, 0, stor9, stor7, stor6, stor17, bool(uint8(stor5.field_8)), bool(uint8(stor5.field_16))
    if block.number < stor18:
        revert with 0, 17
    if block.number - stor18 / 8 * 3600 > -2:
        revert with 0, 17
    return stor18, 
           (block.number - stor18 / 8 * 3600) + 1,
           stor9,
           stor7,
           stor6,
           stor17,
           bool(uint8(stor5.field_8)),
           bool(uint8(stor5.field_16))
}

function set(address arg1, address arg2, uint16 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    stor2 = arg1
    stor19 = arg1
    address(stor20.field_0) = arg2
    if arg5 and 10^9 > -1 / arg5:
        revert with 0, 17
    stor17 = 10^9 * arg5
    uint16(stor5.field_32) = arg3
    if arg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    stor10 = 10^18 * arg4
}

function transferContributedBNB() {
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyAuthorized => caller not authorized'
    call address(stor20.field_0) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PRESALE FLV: transferContributedBNB => fail'
    else:
        if not ext_call.success:
            revert with 0, 'PRESALE FLV: transferContributedBNB => fail'
    ('bool', 'ext_call.success')
}

function setHolder(bool arg1, bool arg2, bool arg3, bool arg4, bool arg5, address arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyIceCreamMan => caller not iceCreamMan'
    stor15[address(arg6)] = uint8(arg4)
    stor16[address(arg6)] = uint8(arg5)
    stor13[address(arg6)] = arg8
    stor14[address(arg6)] = arg7
    stor8[address(arg6)] = uint8(arg1)
    stor11[address(arg6)] = uint8(arg3)
    stor12[address(arg6)] = uint8(arg2)
}

function toggleWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyAuthorized => caller not authorized'
    if stor11[address(arg1)]:
        if stor11[address(arg1)]:
            stor8[address(arg1)] = 0
            stor11[address(arg1)] = 0
            if stor9 < stor10:
                revert with 0, 17
            stor9 -= stor10
    else:
        if not stor11[address(arg1)]:
            stor8[address(arg1)] = 1
            stor11[address(arg1)] = 1
            if stor9 > !stor10:
                revert with 0, 17
            stor9 += stor10
            if stor12[address(arg1)]:
                if stor12[address(arg1)]:
                    stor12[address(arg1)] = 0
                    if stor9 < stor10:
                        revert with 0, 17
                    stor9 -= stor10
            emit WhitelistedHolder(arg1);
}

function adminTokenWithdrawal(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyAuthorized => caller not authorized'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        revert with 0, 'PRESALE FLV: adminTokenWithdrawal => insufficient balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit AdminTokenWithdrawal(arg2, msg.sender, arg1);
    return 1
}

function sub_eaa53523(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if not stor4[address(msg.sender)]:
        revert with 0, 'PRESALE FLV: onlyAuthorized => caller not authorized'
    if uint16(stor5.field_32) < ('cd', 4).length:
        revert with 0, 'PRESALE FLV: batchAddHolder => list length exceeds max'
    idx = 0
    while uint16(idx) < uint16(stor5.field_32):
        if uint16(idx) >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 11
        if not stor11[mem[(32 * uint16(idx)) + 140 len 20]]:
            stor8[address(mem[(32 * uint16(idx)) + 128])] = 1
            stor11[address(mem[(32 * uint16(idx)) + 128])] = 1
            if stor9 > !stor10:
                revert with 0, 17
            stor9 += stor10
            mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
            mem[32] = 12
            if stor12[address(mem[(32 * uint16(idx)) + 128])]:
                mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
                mem[32] = 12
                if stor12[address(mem[(32 * uint16(idx)) + 128])]:
                    mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
                    mem[32] = 12
                    stor12[address(mem[(32 * uint16(idx)) + 128])] = 0
                    if stor9 < stor10:
                        revert with 0, 17
                    stor9 -= stor10
            mem[ceil32(32 * ('cd', 4).length) + 97] = mem[(32 * uint16(idx)) + 140 len 20]
            emit WhitelistedHolder(mem[ceil32(32 * ('cd', 4).length) + 97]);
        if uint16(idx) == 65535:
            revert with 0, 17
        idx = uint16(idx) + 1
        continue 
}

function contribute() payable {
    if not uint8(stor5.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: checkContributionsEnabled => Contributions not enabled.'
    if stor12[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: contribute => holder BLACKLISTED! What did you do?'
    if not stor11[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: contribute => NOT WHITELISTED! For info https://flavorsbsc.com/'
    if stor16[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: contribute => holder already hit max contribution'
    if not stor11[address(msg.sender)]:
        if msg.value > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'PRESALE FLV: contribute => exceeds holder's allowed contribution'
    else:
        if stor10 < stor13[address(msg.sender)]:
            revert with 0, 17
        if msg.value > stor10 - stor13[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'PRESALE FLV: contribute => exceeds holder's allowed contribution'
    if stor13[address(msg.sender)] > !msg.value:
        revert with 0, 17
    stor13[address(msg.sender)] += msg.value
    if stor7 > !msg.value:
        revert with 0, 17
    stor7 += msg.value
    if not stor11[address(msg.sender)]:
        stor16[address(msg.sender)] = 1
    else:
        if stor10 < stor13[address(msg.sender)]:
            revert with 0, 17
        if not stor10 - stor13[address(msg.sender)]:
            stor16[address(msg.sender)] = 1
    if not stor11[address(msg.sender)]:
        emit ContributionReceived(msg.value, stor13[address(msg.sender)], 0, stor7, msg.sender, sha3('PRESALE FLV: Contribution Receiv', 25956));
    else:
        if stor10 < stor13[address(msg.sender)]:
            revert with 0, 17
        emit ContributionReceived(msg.value, stor13[address(msg.sender)], stor10 - stor13[address(msg.sender)], stor7, msg.sender, sha3('PRESALE FLV: Contribution Receiv', 25956));
}

function toggleBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyAuthorized => caller not authorized'
    else:
        if stor12[address(arg1)]:
            if not stor12[address(arg1)]:
            else:
                stor12[address(arg1)] = 0
                if stor9 < stor10:
                    revert with 0, 17
                else:
                    stor9 -= stor10
        else:
            if stor12[address(arg1)]:
            else:
                stor12[address(arg1)] = 1
                if stor9 > !stor10:
                    revert with 0, 17
                else:
                    stor9 += stor10
                    if not stor11[address(arg1)]:
                        if not stor11[address(arg1)]:
                        else:
                            stor8[address(arg1)] = 0
                            stor11[address(arg1)] = 0
                            if stor9 < stor10:
                                revert with 0, 17
                            else:
                                stor9 -= stor10
                    else:
                        if not stor11[address(arg1)]:
                            if not stor11[address(arg1)]:
                            else:
                                stor8[address(arg1)] = 0
                                stor11[address(arg1)] = 0
                                if stor9 < stor10:
                                    revert with 0, 17
                                else:
                                    stor9 -= stor10
                        else:
                            stor8[address(arg1)] = 0
                            stor11[address(arg1)] = 0
                            if stor9 < stor10:
                                revert with 0, 17
                            else:
                                stor9 -= stor10
                                if not stor11[address(arg1)]:
                                else:
                                    stor8[address(arg1)] = 0
                                    stor11[address(arg1)] = 0
                                    if stor9 < stor10:
                                        revert with 0, 17
                                    else:
                                        stor9 -= stor10
}

function claim() {
    if not uint8(stor5.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: checkClaimsEnabled => Claiming FLV is not enabled.'
    if stor12[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: claim => WALLET BLACKLISTED! What did you do?'
    if not stor11[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: claim => NOT WHITELISTED! https://flavorsbsc.com/'
    if stor15[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: claim => holder already hit max claims'
    if stor13[address(msg.sender)] and stor17 > -1 / stor13[address(msg.sender)]:
        revert with 0, 17
    if stor13[address(msg.sender)] * stor17 / 10^18 < stor14[address(msg.sender)]:
        revert with 0, 17
    if (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: claim => holder has no tokens to claim'
    if not stor11[address(msg.sender)]:
        if (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)] > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'PRESALE FLV: _claim => claim exceeds remaining unclaimed FLV'
    else:
        if stor10 and stor17 > -1 / stor10:
            revert with 0, 17
        if stor10 * stor17 / 10^18 < stor14[address(msg.sender)]:
            revert with 0, 17
        if stor13[address(msg.sender)] * stor17 / 10^18 > stor10 * stor17 / 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'PRESALE FLV: _claim => claim exceeds remaining unclaimed FLV'
    if stor6 > !((stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)]):
        revert with 0, 17
    stor6 = stor6 + (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)]
    if stor14[address(msg.sender)] > !((stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)]):
        revert with 0, 17
    stor14[address(msg.sender)] = stor13[address(msg.sender)] * stor17 / 10^18
    if stor10 and stor17 > -1 / stor10:
        revert with 0, 17
    if stor14[address(msg.sender)] > stor10 * stor17 / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: _claim => Claim exceeds total claimable FLV'
    if not stor11[address(msg.sender)]:
        stor15[address(msg.sender)] = 1
    else:
        if stor10 and stor17 > -1 / stor10:
            revert with 0, 17
        if stor10 * stor17 / 10^18 < stor14[address(msg.sender)]:
            revert with 0, 17
        if not (stor10 * stor17 / 10^18) - stor14[address(msg.sender)]:
            stor15[address(msg.sender)] = 1
    require ext_code.size(stor19)
    if not uint8(stor5.field_24):
        call stor19.presaleClaim(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call stor19.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PRESALE FLV: _claim => transfer of claimed tokens failed.'
}

function canISell() {
    if not uint8(stor5.field_8):
        if stor14[address(msg.sender)] and 0 > -1 / stor14[address(msg.sender)]:
            revert with 0, 17
        if not stor19:
            return 0
        require ext_code.size(stor19)
        staticcall stor19.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > stor14[address(msg.sender)]:
            return 0
        require ext_code.size(stor19)
        staticcall stor19.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor14[address(msg.sender)] < ext_call.return_data[0]:
            revert with 0, 17
        if stor14[address(msg.sender)] - ext_call.return_data[0] > 0:
            return 0
        if 0 < stor14[address(msg.sender)] - ext_call.return_data[0]:
            revert with 0, 17
        if 1 > -stor14[address(msg.sender)] + ext_call.return_data[0]:
            return 0
    else:
        if block.number < stor18:
            revert with 0, 17
        if block.number - stor18 / 8 * 3600 > -2:
            revert with 0, 17
        if stor14[address(msg.sender)] and (block.number - stor18 / 8 * 3600) + 1 > -1 / stor14[address(msg.sender)]:
            revert with 0, 17
        if stor14[address(msg.sender)] + (block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) and 10 > -1 / stor14[address(msg.sender)] + (block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]):
            revert with 0, 17
        if not stor19:
            if 0 > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
                return 0
            if (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100 < 0:
                revert with 0, 17
            if 1 > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
                return 0
        else:
            require ext_code.size(stor19)
            staticcall stor19.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > stor14[address(msg.sender)]:
                if 0 > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
                    return 0
                if (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100 < 0:
                    revert with 0, 17
                if 1 > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
                    return 0
            else:
                require ext_code.size(stor19)
                staticcall stor19.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor14[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                if stor14[address(msg.sender)] - ext_call.return_data[0] > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
                    return 0
                if (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100 < stor14[address(msg.sender)] - ext_call.return_data[0]:
                    revert with 0, 17
                if 1 > ((10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100) - stor14[address(msg.sender)] + ext_call.return_data[0]:
                    return 0
    return 1
}

function canHolderSell(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PRESALE FLV: onlyFlavorsToken => caller not flavorsToken'
    if not uint8(stor5.field_8):
        if stor14[address(arg1)] and 0 > -1 / stor14[address(arg1)]:
            revert with 0, 17
        if not stor19:
            if arg2 > 0:
                return 0
        else:
            require ext_code.size(stor19)
            staticcall stor19.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > stor14[address(arg1)]:
                if arg2 > 0:
                    return 0
            else:
                require ext_code.size(stor19)
                staticcall stor19.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor14[address(arg1)] < ext_call.return_data[0]:
                    revert with 0, 17
                if stor14[address(arg1)] - ext_call.return_data[0] > 0:
                    if arg2 > 0:
                        return 0
                else:
                    if 0 < stor14[address(arg1)] - ext_call.return_data[0]:
                        revert with 0, 17
                    if arg2 > -stor14[address(arg1)] + ext_call.return_data[0]:
                        return 0
    else:
        if block.number < stor18:
            revert with 0, 17
        if block.number - stor18 / 8 * 3600 > -2:
            revert with 0, 17
        if stor14[address(arg1)] and (block.number - stor18 / 8 * 3600) + 1 > -1 / stor14[address(arg1)]:
            revert with 0, 17
        if stor14[address(arg1)] + (block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) and 10 > -1 / stor14[address(arg1)] + (block.number - stor18 / 8 * 3600 * stor14[address(arg1)]):
            revert with 0, 17
        if not stor19:
            if 0 > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
                if arg2 > 0:
                    return 0
            else:
                if (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100 < 0:
                    revert with 0, 17
                if arg2 > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
                    return 0
        else:
            require ext_code.size(stor19)
            staticcall stor19.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > stor14[address(arg1)]:
                if 0 > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
                    if arg2 > 0:
                        return 0
                else:
                    if (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100 < 0:
                        revert with 0, 17
                    if arg2 > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
                        return 0
            else:
                require ext_code.size(stor19)
                staticcall stor19.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor14[address(arg1)] < ext_call.return_data[0]:
                    revert with 0, 17
                if stor14[address(arg1)] - ext_call.return_data[0] > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
                    if arg2 > 0:
                        return 0
                else:
                    if (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100 < stor14[address(arg1)] - ext_call.return_data[0]:
                        revert with 0, 17
                    if arg2 > ((10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100) - stor14[address(arg1)] + ext_call.return_data[0]:
                        return 0
    return 1
}

function getHolderInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor8[address(arg1)]:
        return 0
    if stor10 < stor13[address(arg1)]:
        revert with 0, 17
    if stor13[address(arg1)] and stor17 > -1 / stor13[address(arg1)]:
        revert with 0, 17
    if stor13[address(arg1)] * stor17 / 10^18 < stor14[address(arg1)]:
        revert with 0, 17
    if not uint8(stor5.field_8):
        if stor14[address(arg1)] and 0 > -1 / stor14[address(arg1)]:
            revert with 0, 17
        if not stor19:
            return stor10 - stor13[address(arg1)], 
                   (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
                   0,
                   stor13[address(arg1)],
                   stor14[address(arg1)],
                   bool(stor16[address(arg1)]),
                   bool(stor15[address(arg1)])
        require ext_code.size(stor19)
        staticcall stor19.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > stor14[address(arg1)]:
            return stor10 - stor13[address(arg1)], 
                   (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
                   0,
                   stor13[address(arg1)],
                   stor14[address(arg1)],
                   bool(stor16[address(arg1)]),
                   bool(stor15[address(arg1)])
        require ext_code.size(stor19)
        staticcall stor19.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor14[address(arg1)] < ext_call.return_data[0]:
            revert with 0, 17
        if stor14[address(arg1)] - ext_call.return_data[0] > 0:
            return stor10 - stor13[address(arg1)], 
                   (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
                   0,
                   stor13[address(arg1)],
                   stor14[address(arg1)],
                   bool(stor16[address(arg1)]),
                   bool(stor15[address(arg1)])
        if 0 < stor14[address(arg1)] - ext_call.return_data[0]:
            revert with 0, 17
        return stor10 - stor13[address(arg1)], 
               (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
               -stor14[address(arg1)] + ext_call.return_data[0],
               stor13[address(arg1)],
               stor14[address(arg1)],
               bool(stor16[address(arg1)]),
               bool(stor15[address(arg1)])
    if block.number < stor18:
        revert with 0, 17
    if block.number - stor18 / 8 * 3600 > -2:
        revert with 0, 17
    if stor14[address(arg1)] and (block.number - stor18 / 8 * 3600) + 1 > -1 / stor14[address(arg1)]:
        revert with 0, 17
    if stor14[address(arg1)] + (block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) and 10 > -1 / stor14[address(arg1)] + (block.number - stor18 / 8 * 3600 * stor14[address(arg1)]):
        revert with 0, 17
    if not stor19:
        if 0 > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
            return stor10 - stor13[address(arg1)], 
                   (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
                   0,
                   stor13[address(arg1)],
                   stor14[address(arg1)],
                   bool(stor16[address(arg1)]),
                   bool(stor15[address(arg1)])
        if (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100 < 0:
            revert with 0, 17
        return stor10 - stor13[address(arg1)], 
               (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
               (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100,
               stor13[address(arg1)],
               stor14[address(arg1)],
               bool(stor16[address(arg1)]),
               bool(stor15[address(arg1)])
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > stor14[address(arg1)]:
        if 0 > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
            return stor10 - stor13[address(arg1)], 
                   (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
                   0,
                   stor13[address(arg1)],
                   stor14[address(arg1)],
                   bool(stor16[address(arg1)]),
                   bool(stor15[address(arg1)])
        if (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100 < 0:
            revert with 0, 17
        return stor10 - stor13[address(arg1)], 
               (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
               (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100,
               stor13[address(arg1)],
               stor14[address(arg1)],
               bool(stor16[address(arg1)]),
               bool(stor15[address(arg1)])
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor14[address(arg1)] < ext_call.return_data[0]:
        revert with 0, 17
    if stor14[address(arg1)] - ext_call.return_data[0] > (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100:
        return stor10 - stor13[address(arg1)], 
               (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
               0,
               stor13[address(arg1)],
               stor14[address(arg1)],
               bool(stor16[address(arg1)]),
               bool(stor15[address(arg1)])
    if (10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100 < stor14[address(arg1)] - ext_call.return_data[0]:
        revert with 0, 17
    return stor10 - stor13[address(arg1)], 
           (stor13[address(arg1)] * stor17 / 10^18) - stor14[address(arg1)],
           ((10 * stor14[address(arg1)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(arg1)]) / 100) - stor14[address(arg1)] + ext_call.return_data[0],
           stor13[address(arg1)],
           stor14[address(arg1)],
           bool(stor16[address(arg1)]),
           bool(stor15[address(arg1)])
}

function getMyInfo() {
    if not stor8[address(msg.sender)]:
        return 0
    if stor10 < stor13[address(msg.sender)]:
        revert with 0, 17
    if stor13[address(msg.sender)] and stor17 > -1 / stor13[address(msg.sender)]:
        revert with 0, 17
    if stor13[address(msg.sender)] * stor17 / 10^18 < stor14[address(msg.sender)]:
        revert with 0, 17
    if not uint8(stor5.field_8):
        if stor14[address(msg.sender)] and 0 > -1 / stor14[address(msg.sender)]:
            revert with 0, 17
        if not stor19:
            return stor10 - stor13[address(msg.sender)], 
                   (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
                   0,
                   stor13[address(msg.sender)],
                   stor14[address(msg.sender)],
                   bool(stor16[address(msg.sender)]),
                   bool(stor15[address(msg.sender)])
        require ext_code.size(stor19)
        staticcall stor19.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > stor14[address(msg.sender)]:
            return stor10 - stor13[address(msg.sender)], 
                   (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
                   0,
                   stor13[address(msg.sender)],
                   stor14[address(msg.sender)],
                   bool(stor16[address(msg.sender)]),
                   bool(stor15[address(msg.sender)])
        require ext_code.size(stor19)
        staticcall stor19.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor14[address(msg.sender)] < ext_call.return_data[0]:
            revert with 0, 17
        if stor14[address(msg.sender)] - ext_call.return_data[0] > 0:
            return stor10 - stor13[address(msg.sender)], 
                   (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
                   0,
                   stor13[address(msg.sender)],
                   stor14[address(msg.sender)],
                   bool(stor16[address(msg.sender)]),
                   bool(stor15[address(msg.sender)])
        if 0 < stor14[address(msg.sender)] - ext_call.return_data[0]:
            revert with 0, 17
        return stor10 - stor13[address(msg.sender)], 
               (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
               -stor14[address(msg.sender)] + ext_call.return_data[0],
               stor13[address(msg.sender)],
               stor14[address(msg.sender)],
               bool(stor16[address(msg.sender)]),
               bool(stor15[address(msg.sender)])
    if block.number < stor18:
        revert with 0, 17
    if block.number - stor18 / 8 * 3600 > -2:
        revert with 0, 17
    if stor14[address(msg.sender)] and (block.number - stor18 / 8 * 3600) + 1 > -1 / stor14[address(msg.sender)]:
        revert with 0, 17
    if stor14[address(msg.sender)] + (block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) and 10 > -1 / stor14[address(msg.sender)] + (block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]):
        revert with 0, 17
    if not stor19:
        if 0 > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
            return stor10 - stor13[address(msg.sender)], 
                   (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
                   0,
                   stor13[address(msg.sender)],
                   stor14[address(msg.sender)],
                   bool(stor16[address(msg.sender)]),
                   bool(stor15[address(msg.sender)])
        if (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100 < 0:
            revert with 0, 17
        return stor10 - stor13[address(msg.sender)], 
               (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
               (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100,
               stor13[address(msg.sender)],
               stor14[address(msg.sender)],
               bool(stor16[address(msg.sender)]),
               bool(stor15[address(msg.sender)])
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > stor14[address(msg.sender)]:
        if 0 > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
            return stor10 - stor13[address(msg.sender)], 
                   (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
                   0,
                   stor13[address(msg.sender)],
                   stor14[address(msg.sender)],
                   bool(stor16[address(msg.sender)]),
                   bool(stor15[address(msg.sender)])
        if (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100 < 0:
            revert with 0, 17
        return stor10 - stor13[address(msg.sender)], 
               (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
               (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100,
               stor13[address(msg.sender)],
               stor14[address(msg.sender)],
               bool(stor16[address(msg.sender)]),
               bool(stor15[address(msg.sender)])
    require ext_code.size(stor19)
    staticcall stor19.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor14[address(msg.sender)] < ext_call.return_data[0]:
        revert with 0, 17
    if stor14[address(msg.sender)] - ext_call.return_data[0] > (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100:
        return stor10 - stor13[address(msg.sender)], 
               (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
               0,
               stor13[address(msg.sender)],
               stor14[address(msg.sender)],
               bool(stor16[address(msg.sender)]),
               bool(stor15[address(msg.sender)])
    if (10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100 < stor14[address(msg.sender)] - ext_call.return_data[0]:
        revert with 0, 17
    return stor10 - stor13[address(msg.sender)], 
           (stor13[address(msg.sender)] * stor17 / 10^18) - stor14[address(msg.sender)],
           ((10 * stor14[address(msg.sender)]) + (10 * block.number - stor18 / 8 * 3600 * stor14[address(msg.sender)]) / 100) - stor14[address(msg.sender)] + ext_call.return_data[0],
           stor13[address(msg.sender)],
           stor14[address(msg.sender)],
           bool(stor16[address(msg.sender)]),
           bool(stor15[address(msg.sender)])
}



}
