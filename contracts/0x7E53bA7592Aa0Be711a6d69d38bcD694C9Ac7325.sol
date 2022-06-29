contract main {




// =====================  Runtime code  =====================


const timestamp = block.timestamp

const nativeCoinBalance = eth.balance(this.address)


address owner;
address iceCreamManAddress;
address ownableAddress;
address flavorsTokenAddress;
address wrappedNativeAddress;
address stor5;
address stor6;
address stor7;
uint256 sub_8de890bd;
uint256 launchedAtTimestamp;
uint256 periodLength;
uint8 stor11;
uint256 stor11; offset 8
uint256 sub_6318ac64;
uint256 sub_3ffa930c;
mapping of uint256 stor13;
mapping of uint8 stor14;
mapping of uint256 stor15;
mapping of uint256 stor16;
mapping of uint8 stor17;
mapping of uint256 stor18;
uint8 initialized;
uint256 sub_4791a82e;
uint8 stor21;

function initialized() {
    return bool(initialized)
}

function sub_3ffa930c(?) {
    return sub_3ffa930c
}

function sub_4791a82e(?) {
    return sub_4791a82e
}

function sub_6318ac64(?) {
    return sub_6318ac64
}

function flavorsToken() {
    return flavorsTokenAddress
}

function owner() {
    return owner
}

function sub_8de890bd(?) {
    return sub_8de890bd
}

function ownable() {
    return ownableAddress
}

function launchedAtTimestamp() {
    return launchedAtTimestamp
}

function periodLength() {
    return periodLength
}

function iceCreamMan() {
    return iceCreamManAddress
}

function wrappedNative() {
    return wrappedNativeAddress
}

function burnItAllDown_OO() {
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CREAMERY: onlyOwnable => caller not ownableFlavors'
    selfdestruct(iceCreamManAddress)
}

function sub_7025128f(?) {
    owner = 0
    iceCreamManAddress = 0
}

function periodsElapsed() {
    if block.timestamp < launchedAtTimestamp:
        revert with 0, 17
    if not periodLength:
        revert with 0, 18
    return (block.timestamp - launchedAtTimestamp / periodLength)
}

function sub_22ac0f04(?) {
    if flavorsTokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CREAMERY: onlyToken => caller not flavors token'
    sub_8de890bd = block.number
    launchedAtTimestamp = block.timestamp
}

function getAccountData(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stor13[address(arg1)], 
           bool(stor14[address(arg1)]),
           stor15[address(arg1)],
           stor16[address(arg1)],
           bool(stor17[address(arg1)]),
           stor18[address(arg1)]
}

function updateOwner_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CREAMERY: onlyOwnable => caller not ownableFlavors'
    emit OwnerUpdated(owner, arg1);
    owner = arg1
}

function updateIceCreamMan_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CREAMERY: onlyOwnable => caller not ownableFlavors'
    emit IceCreamManUpdated(iceCreamManAddress, arg1);
    iceCreamManAddress = arg1
}

function sub_ed2decf3(?) {
    require calldata.size - 4 >= 32
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    periodLength = arg1
    emit WaitingPeriodChanged(msg.sender, periodLength, arg1);
}

function sub_7316a114(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    uint8(stor11.field_0) = uint8(arg1)
    Mask(248, 0, stor11.field_8) = 0
}

function _fallback() payable {
    emit DepositReceived(address arg1, uint256 arg2, string arg3, string arg4):
                         address(msg.sender),
                         msg.value,
                         128,
                         192,
                         26,
                         'CREAMERY: Payment Received',
                         24,
                         'They Didn't Leave A Note',
                         0,
}

function sub_54788e9f(?) {
    require calldata.size - 4 >= 32
    if flavorsTokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CREAMERY: onlyToken => caller not flavors token'
    require ext_code.size(stor7)
    call stor7.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b2b26eca(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 == bool(arg3)
    require arg6 == bool(arg6)
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    stor13[address(arg1)] = arg2
    stor14[address(arg1)] = uint8(bool(arg3))
    stor15[address(arg1)] = arg4
    stor16[address(arg1)] = arg5
    stor17[address(arg1)] = uint8(bool(arg6))
}

function sub_26e91d99(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    stor17[address(arg1)] = 0
    stor13[address(arg1)] = 0
    if block.timestamp < launchedAtTimestamp:
        revert with 0, 17
    if not periodLength:
        revert with 0, 18
    stor16[address(arg1)] = block.timestamp - launchedAtTimestamp / periodLength
    stor15[address(arg1)] = 0
    stor14[address(arg1)] = 0
}

function deposit(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    emit DepositReceived(address arg1, uint256 arg2, string arg3, string arg4):
                         msg.sender,
                         msg.value,
                         128,
                         192,
                         26,
                         'CREAMERY: Payment Received',
                         arg1.length,
                         arg1[all],
                         Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256,
}

function updateOwnable_OAD(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    emit OwnableFlavorsUpdated(stor6, arg1);
    stor6 = arg1
    if initialized:
        require ext_code.size(stor6)
        staticcall stor6.0xe4d5fc2c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != iceCreamManAddress:
            revert with 0, 'CREAMERY: _updateOwnable => new ownableFlavors must have the same iceCreamMan.'
        require ext_code.size(stor6)
        staticcall stor6.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != owner:
            revert with 0, 'CREAMERY: _updateOwnable => new ownableFlavors must have the same owner.'
}

function adminTokenWithdrawal_OAD(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= arg2:
        revert with 0, 'CREAMERY: adminTokenWithdrawal_OAD => insufficient balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args iceCreamManAddress, arg2 / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2 / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit AdminTokenWithdrawal(msg.sender, arg2, arg1);
    return 1
}

function sub_6c96be32(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    if uint8(arg1) > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CREAMERY: adminWithdrawal_OAD - percentOfCreamery must be an integer between 0 & 100'
    if eth.balance(this.address) and uint8(arg1) > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) <= eth.balance(this.address) * uint8(arg1) / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CREAMERY: adminWithdrawal_OAD => insufficient balance'
    if eth.balance(this.address) < eth.balance(this.address) * uint8(arg1) / 100 / 2:
        revert with 0, 'Address: insufficient balance'
    call iceCreamManAddress with:
       value eth.balance(this.address) * uint8(arg1) / 100 / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value'
    if eth.balance(this.address) < eth.balance(this.address) * uint8(arg1) / 100 / 2:
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value eth.balance(this.address) * uint8(arg1) / 100 / 2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value'
    emit AdminWithdrawal(msg.sender, eth.balance(this.address) * uint8(arg1) / 100, uint8(arg1));
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    ownableAddress = arg1
    stor6 = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.0xe4d5fc2c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    iceCreamManAddress = ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.0x6493c41d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    flavorsTokenAddress = ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.0x6493c41d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor5 = ext_call.return_data[12 len 20]
    require ext_code.size(stor6)
    staticcall stor6.0xeb6d3a11 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    wrappedNativeAddress = ext_call.return_data[12 len 20]
    stor7 = ext_call.return_data[12 len 20]
    initialized = 1
}

function creamAndFreeze(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor6)
    staticcall stor6.isAuthorized(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'CREAMERY: authorized => caller not authorized'
    if arg1 > 100:
        revert with 0, 'CREAMERY: creamAndFreeze - percentOfCreamery must be an integer between 0 & 100'
    if eth.balance(this.address) and arg1 > -1 / eth.balance(this.address):
        revert with 0, 17
    if eth.balance(this.address) <= eth.balance(this.address) * arg1 / 100:
        revert with 0, 'CREAMERY: creamAndFreeze => insufficient funds'
    require ext_code.size(stor5)
    staticcall stor5.gas() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    if sub_3ffa930c > !(eth.balance(this.address) * arg1 / 100):
        revert with 0, 17
    sub_3ffa930c += eth.balance(this.address) * arg1 / 100
    emit GlobalWithdrawn((sub_3ffa930c + (eth.balance(this.address) * arg1 / 100)));
    mem[(2 * ceil32(return_data.size)) + 132] = 0, mem[(2 * ceil32(return_data.size)) + 132 len 28]
    call flavorsTokenAddress.mem[(2 * ceil32(return_data.size)) + 132 len 4] with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas uint32(ext_call.return_data[96]) wei
    if not ext_call.success:
        revert with 0, 'CREAMERY: creamAndFreeze => fail'
    if sub_4791a82e > !(eth.balance(this.address) * arg1 / 100):
        revert with 0, 17
    sub_4791a82e += eth.balance(this.address) * arg1 / 100
    emit CreamAndFreeze(msg.sender, eth.balance(this.address) * arg1 / 100, arg1 << 248, sub_4791a82e);
}

function sub_9fc0ae30(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: onlyAdmin => caller not iceCreamMan or Owner'
    stor17[address(arg2)] = 1
    if not arg3:
        if stor15[address(arg2)] > !arg1:
            revert with 0, 17
        stor15[address(arg2)] += arg1
        emit AddWithdrawable(address(arg2), arg1, stor15[address(arg2)] + arg1);
        emit PaymentAuthorized(msg.sender, arg1, address(arg2), bool(arg3));
        emit AuthorizedWithdrawalRemaining(address(arg2), stor15[address(arg2)]);
    else:
        if bool(arg3) == 1:
            if bool(stor14[address(arg2)]) != 1:
                if not stor14[address(arg2)]:
                    stor13[address(arg2)] = arg1
                    if block.timestamp < launchedAtTimestamp:
                        revert with 0, 17
                    if not periodLength:
                        revert with 0, 18
                    stor16[address(arg2)] = block.timestamp - launchedAtTimestamp / periodLength
                    emit PaymentAuthorized(address(msg.sender), arg1, address(arg2), bool(arg3));
            else:
                if block.timestamp < launchedAtTimestamp:
                    revert with 0, 17
                if not periodLength:
                    revert with 0, 18
                if block.timestamp - launchedAtTimestamp / periodLength < stor16[address(arg2)]:
                    revert with 0, 17
                if (block.timestamp - launchedAtTimestamp / periodLength) - stor16[address(arg2)] and stor13[address(arg2)] > -1 / (block.timestamp - launchedAtTimestamp / periodLength) - stor16[address(arg2)]:
                    revert with 0, 17
                if block.timestamp < launchedAtTimestamp:
                    revert with 0, 17
                if not periodLength:
                    revert with 0, 18
                stor16[address(arg2)] = block.timestamp - launchedAtTimestamp / periodLength
                if stor15[address(arg2)] > !((block.timestamp - launchedAtTimestamp / periodLength * stor13[address(arg2)]) - (stor16[address(arg2)] * stor13[address(arg2)])):
                    revert with 0, 17
                stor15[address(arg2)] = stor15[address(arg2)] + (block.timestamp - launchedAtTimestamp / periodLength * stor13[address(arg2)]) - (stor16[address(arg2)] * stor13[address(arg2)])
                emit AddWithdrawable(address(arg2), (block.timestamp - launchedAtTimestamp / periodLength * stor13[address(arg2)]) - (stor16[address(arg2)] * stor13[address(arg2)]), stor15[address(arg2)] + (block.timestamp - launchedAtTimestamp / periodLength * stor13[address(arg2)]) - (stor16[address(arg2)] * stor13[address(arg2)]));
                stor13[address(arg2)] = arg1
}

function authorizedWithdrawal(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CREAMERY: lockWhileUsing => function locked while in use'
    stor21 = 1
    if bool(stor17[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'CREAMERY: authorizedWithdrawal => not authorized to withdraw'
    if bool(stor14[msg.sender]) != 1:
        if arg1 > stor15[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: authorizedWithdrawal => insufficient funds'
        if arg1 > stor15[address(msg.sender)]:
            revert with 0, 
                        32,
                        63,
                        0xfe435245414d4552593a205f737562576974686472617761626c65203d3e20496e73756666696369656e7420576974686472617761626c652042616c616e63, mem[191 len 1] >> 248,
                        0
    else:
        if block.timestamp < launchedAtTimestamp:
            revert with 0, 17
        if not periodLength:
            revert with 0, 18
        if block.timestamp - launchedAtTimestamp / periodLength < stor16[address(msg.sender)]:
            revert with 0, 17
        if (block.timestamp - launchedAtTimestamp / periodLength) - stor16[address(msg.sender)] and stor13[address(msg.sender)] > -1 / (block.timestamp - launchedAtTimestamp / periodLength) - stor16[address(msg.sender)]:
            revert with 0, 17
        if block.timestamp < launchedAtTimestamp:
            revert with 0, 17
        if not periodLength:
            revert with 0, 18
        stor16[address(msg.sender)] = block.timestamp - launchedAtTimestamp / periodLength
        if stor15[address(msg.sender)] > !((block.timestamp - launchedAtTimestamp / periodLength * stor13[address(msg.sender)]) - (stor16[address(msg.sender)] * stor13[address(msg.sender)])):
            revert with 0, 17
        stor15[address(msg.sender)] = stor15[address(msg.sender)] + (block.timestamp - launchedAtTimestamp / periodLength * stor13[address(msg.sender)]) - (stor16[address(msg.sender)] * stor13[address(msg.sender)])
        emit AddWithdrawable(msg.sender, (block.timestamp - launchedAtTimestamp / periodLength * stor13[address(msg.sender)]) - (stor16[address(msg.sender)] * stor13[address(msg.sender)]), stor15[address(msg.sender)] + (block.timestamp - launchedAtTimestamp / periodLength * stor13[address(msg.sender)]) - (stor16[address(msg.sender)] * stor13[address(msg.sender)]));
        if arg1 > stor15[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'CREAMERY: authorizedWithdrawal => insufficient funds'
        if arg1 > stor15[address(msg.sender)]:
            revert with 0, 
                        32,
                        63,
                        0xfe435245414d4552593a205f737562576974686472617761626c65203d3e20496e73756666696369656e7420576974686472617761626c652042616c616e63, uint8(stor15[address(msg.sender)] + (block.timestamp - launchedAtTimestamp / periodLength * stor13[address(msg.sender)]) - (stor16[address(msg.sender)] * stor13[address(msg.sender)])) >> 248,
                        0
    ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor15', 15))))
    stor15[address(msg.sender)] -= arg1
    emit SubWithdrawable(msg.sender, arg1, stor15[address(msg.sender)] - arg1);
    if stor18[address(msg.sender)] > !arg1:
        revert with 0, 17
    stor18[address(msg.sender)] += arg1
    emit AddWithdrawn(msg.sender, arg1, stor18[address(msg.sender)] + arg1);
    if sub_3ffa930c > !arg1:
        revert with 0, 17
    sub_3ffa930c += arg1
    emit GlobalWithdrawn((sub_3ffa930c + arg1));
    require ext_code.size(stor5)
    staticcall stor5.gas() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    call msg.sender with:
       value arg1 wei
         gas ext_call.return_data[156 len 4] wei
    if not ext_call.success:
        revert with 0, 'CREAMERY: authorizedWithdrawal - fail'
    emit AuthorizedWithdrawal(msg.sender, arg1);
    stor21 = 0
}



}
