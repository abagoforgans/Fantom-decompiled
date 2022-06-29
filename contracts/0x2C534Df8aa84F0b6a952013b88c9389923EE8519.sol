contract main {




// =====================  Runtime code  =====================


#
#  - process_OT(uint256 arg1)
#  - _fallback()
#
address routerAddress;
address sub_23239bb7Address;
address ownableAddress;
address flavorsTokenAddress;
address wrappedNativeAddress;
address iceCreamManAddress;
address owner;
address stor7;
address dripAddress;
address stor9;
address stor10;
uint8 stor11; offset 160
uint128 stor11; offset 160
address stor11;
address sub_6016a926Address;
array of address stor13;
mapping of uint256 sub_e9bbb040;
mapping of uint256 sub_91bfcc44;
mapping of struct shares;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;
uint8 stor25;
uint256 stor26;
uint32 stor27;

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function initialized() {
    return bool(stor25)
}

function sub_23239bb7(?) {
    return sub_23239bb7Address
}

function dripAddress() {
    return dripAddress
}

function totalShares() {
    return totalShares
}

function minDistribution() {
    return minDistribution
}

function sub_6016a926(?) {
    return sub_6016a926Address
}

function flavorsToken() {
    return flavorsTokenAddress
}

function sub_6a8d49b6(?) {
    return bool(uint8(stor11.field_160))
}

function owner() {
    return owner
}

function sub_91bfcc44(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_91bfcc44[arg1]
}

function totalDividends() {
    return totalDividends
}

function ownable() {
    return ownableAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function holdersListLength() {
    return stor13.length
}

function dividendsPerShare() {
    return dividendsPerShare
}

function iceCreamMan() {
    return iceCreamManAddress
}

function sub_e9bbb040(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e9bbb040[arg1]
}

function wrappedNative() {
    return wrappedNativeAddress
}

function totalDistributed() {
    return totalDistributed
}

function router() {
    return routerAddress
}

function minPeriod() {
    return minPeriod
}

function burnItAllDown_OO() {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLAVOR DRIPPER: onlyIceCreamMan => caller not iceCreamMan'
    selfdestruct(iceCreamManAddress)
}

function TEST_weSentYouSomething_OAD() {
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
}

function dripTotalSupply() {
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSwapDeadlineWaitTime_OAD(uint256 arg1) {
    require calldata.size - 4 >= 32
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    stor26 = arg1
}

function setMaxIterations(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    stor27 = arg1
}

function dripDecimals() {
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function setFlavorDistCriteria_OAD(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    minPeriod = arg1
    minDistribution = arg2
}

function dripBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateRouter_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor11.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLAVOR DRIPPER: onlyOwnable => Caller Not Ownable Flavors'
    routerAddress = arg1
    stor7 = arg1
    emit RouterUpdated(routerAddress, arg1);
}

function updateFlavorsToken_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor11.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLAVOR DRIPPER: onlyOwnable => Caller Not Ownable Flavors'
    flavorsTokenAddress = arg1
    stor10 = arg1
    emit FlavorsTokenUpdated(flavorsTokenAddress, arg1);
}

function TEST_addHolder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    sub_e9bbb040[address(arg1)] = stor13.length
    stor13.length++
    stor13[stor13.length] = arg1
}

function updateOwnableFlavors_OAD(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    ownableAddress = arg1
    address(stor11.field_0) = arg1
    emit OwnableFlavorsUpdated(address(stor11.field_0), arg1);
}

function updateFlavor_OO(address arg1, bool arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if address(stor11.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLAVOR DRIPPER: onlyOwnable => Caller Not Ownable Flavors'
    sub_23239bb7Address = arg1
    Mask(96, 0, stor11.field_160) = Mask(96, 0, arg2)
    sub_6016a926Address = arg3
    dripAddress = arg1
    emit FlavorUpdated(sub_23239bb7Address, bool(uint8(stor11.field_160)), sub_6016a926Address, address(arg1), arg2, address(arg3));
}

function TEST_removeHolder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    if stor13.length < 1:
        revert with 0, 17
    if stor13.length - 1 >= stor13.length:
        revert with 0, 50
    if sub_e9bbb040[address(arg1)] >= stor13.length:
        revert with 0, 50
    stor13[stor14[address(arg1)]] = stor13[stor13.length]
    if stor13.length < 1:
        revert with 0, 17
    if stor13.length - 1 >= stor13.length:
        revert with 0, 50
    sub_e9bbb040[stor13[stor13.length]] = sub_e9bbb040[address(arg1)]
    if not stor13.length:
        revert with 0, 49
    stor13[stor13.length] = 0
    stor13.length--
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 0, 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function dripName() {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(dripAddress)
    staticcall dripAddress.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function dripSymbol() {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[ceil32(return_data.size) + _5 + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) > _5:
        mem[mem[64] + _5 + 64] = 0
    return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
}

function adminTokenWithdrawal_OAD(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
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

function deposit2() {
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(stor11.field_160):
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 'Address: insufficient balance'
        call sub_6016a926Address with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value'
    else:
        mem[ceil32(return_data.size) + 128] = wrappedNativeAddress
        mem[ceil32(return_data.size) + 160] = dripAddress
        if block.timestamp > !stor26:
            revert with 0, 17
        mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 0
        idx = 0
        s = ceil32(return_data.size) + 356
        t = ceil32(return_data.size) + 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor7)
        call stor7.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + stor26, 2, mem[ceil32(return_data.size) + 356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'ext_call.success')
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if totalDividends > !0:
        revert with 0, 17
    if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if dividendsPerShare > !((ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares):
        revert with 0, 17
    dividendsPerShare += (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares
}

function initialize_OI(address arg1, bool arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    ownableAddress = arg4
    address(stor11.field_0) = arg4
    emit OwnableFlavorsUpdated(address(stor11.field_0), arg4);
    sub_23239bb7Address = arg1
    Mask(96, 0, stor11.field_160) = Mask(96, 0, arg2)
    sub_6016a926Address = arg3
    dripAddress = arg1
    emit FlavorUpdated(sub_23239bb7Address, bool(uint8(stor11.field_160)), sub_6016a926Address, address(arg1), arg2, address(arg3));
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0xf887ea40 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    routerAddress = ext_call.return_data[12 len 20]
    stor7 = ext_call.return_data[12 len 20]
    emit RouterUpdated(routerAddress, address(ext_call.return_data[0]));
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x6493c41d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    flavorsTokenAddress = ext_call.return_data[12 len 20]
    stor10 = ext_call.return_data[12 len 20]
    emit FlavorsTokenUpdated(flavorsTokenAddress, address(ext_call.return_data[0]));
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0xe4d5fc2c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    iceCreamManAddress = ext_call.return_data[12 len 20]
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0xeb6d3a11 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    wrappedNativeAddress = ext_call.return_data[12 len 20]
    stor9 = ext_call.return_data[12 len 20]
    stor25 = 1
}

function claimDividend() {
    if shares[address(msg.sender)].field_0:
        if shares[address(msg.sender)].field_0:
            if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                    revert with 0, 17
                if (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                    if totalDistributed > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    totalDistributed = totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    sub_91bfcc44[address(msg.sender)] = block.timestamp
                    if shares[address(msg.sender)].field_512 > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                    require ext_code.size(dripAddress)
                    call dripAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'FLAVOR DRIPPER: distributeDividend => transfer to holder failed'
}

function deposit(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 161] = 128
    mem[ceil32(ceil32(arg1.length)) + 225] = 32
    mem[ceil32(ceil32(arg1.length)) + 257] = 'FLAVOR DRIPPER: Payment Received'
    mem[ceil32(ceil32(arg1.length)) + 193] = 192
    mem[ceil32(ceil32(arg1.length)) + 289] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + 321 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 321] = 0
    emit DepositReceived(address arg1, uint256 arg2, string arg3, string arg4):
                         msg.sender,
                         msg.value,
                         128,
                         192,
                         32,
                         'FLAVOR DRIPPER: Payment Received',
                         arg1.length,
                         arg1[all],
                         Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, msg.sender) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256,
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8(stor11.field_160):
        if eth.balance(this.address) < msg.value:
            revert with 0, 'Address: insufficient balance'
        call sub_6016a926Address with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value'
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = wrappedNativeAddress
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 161] = dripAddress
        if block.timestamp > !stor26:
            revert with 0, 17
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 197] = 0
        idx = 0
        s = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 357
        t = ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor7)
        call stor7.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + stor26, 2, mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 357 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'ext_call.success')
    require ext_code.size(dripAddress)
    staticcall dripAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if totalDividends > !0:
        revert with 0, 17
    if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if dividendsPerShare > !((ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares):
        revert with 0, 17
    dividendsPerShare += (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares
}

function setShare_OT(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if flavorsTokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLAVOR DRIPPER: OnlyToken => Caller Not Flavors Token'
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        sub_91bfcc44[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        require ext_code.size(dripAddress)
                        call dripAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'FLAVOR DRIPPER: distributeDividend => transfer to holder failed'
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0:
                if stor13.length < 1:
                    revert with 0, 17
                if stor13.length - 1 >= stor13.length:
                    revert with 0, 50
                if sub_e9bbb040[address(arg1)] >= stor13.length:
                    revert with 0, 50
                stor13[stor14[address(arg1)]] = stor13[stor13.length]
                if stor13.length < 1:
                    revert with 0, 17
                if stor13.length - 1 >= stor13.length:
                    revert with 0, 50
                sub_e9bbb040[stor13[stor13.length]] = sub_e9bbb040[address(arg1)]
                if not stor13.length:
                    revert with 0, 49
                stor13[stor13.length] = 0
                stor13.length--
    else:
        if not shares[address(arg1)].field_0:
            sub_e9bbb040[address(arg1)] = stor13.length
            stor13.length++
            stor13[stor13.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if stor13.length < 1:
                        revert with 0, 17
                    if stor13.length - 1 >= stor13.length:
                        revert with 0, 50
                    if sub_e9bbb040[address(arg1)] >= stor13.length:
                        revert with 0, 50
                    stor13[stor14[address(arg1)]] = stor13[stor13.length]
                    if stor13.length < 1:
                        revert with 0, 17
                    if stor13.length - 1 >= stor13.length:
                        revert with 0, 50
                    sub_e9bbb040[stor13[stor13.length]] = sub_e9bbb040[address(arg1)]
                    if not stor13.length:
                        revert with 0, 49
                    stor13[stor13.length] = 0
                    stor13.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if arg2 and dividendsPerShare > -1 / arg2:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    shares[address(arg1)].field_256 = arg2 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function TEST_setShare(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVOR DRIPPER: onlyAdmin => caller not IceCreamMan or Owner'
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        sub_91bfcc44[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
                        require ext_code.size(dripAddress)
                        call dripAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'FLAVOR DRIPPER: distributeDividend => transfer to holder failed'
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0:
                if stor13.length < 1:
                    revert with 0, 17
                if stor13.length - 1 >= stor13.length:
                    revert with 0, 50
                if sub_e9bbb040[address(arg1)] >= stor13.length:
                    revert with 0, 50
                stor13[stor14[address(arg1)]] = stor13[stor13.length]
                if stor13.length < 1:
                    revert with 0, 17
                if stor13.length - 1 >= stor13.length:
                    revert with 0, 50
                sub_e9bbb040[stor13[stor13.length]] = sub_e9bbb040[address(arg1)]
                if not stor13.length:
                    revert with 0, 49
                stor13[stor13.length] = 0
                stor13.length--
    else:
        if not shares[address(arg1)].field_0:
            sub_e9bbb040[address(arg1)] = stor13.length
            stor13.length++
            stor13[stor13.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if stor13.length < 1:
                        revert with 0, 17
                    if stor13.length - 1 >= stor13.length:
                        revert with 0, 50
                    if sub_e9bbb040[address(arg1)] >= stor13.length:
                        revert with 0, 50
                    stor13[stor14[address(arg1)]] = stor13[stor13.length]
                    if stor13.length < 1:
                        revert with 0, 17
                    if stor13.length - 1 >= stor13.length:
                        revert with 0, 50
                    sub_e9bbb040[stor13[stor13.length]] = sub_e9bbb040[address(arg1)]
                    if not stor13.length:
                        revert with 0, 49
                    stor13[stor13.length] = 0
                    stor13.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if arg2 and dividendsPerShare > -1 / arg2:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    shares[address(arg1)].field_256 = arg2 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
