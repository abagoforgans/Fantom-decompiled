contract main {




// =====================  Runtime code  =====================


#
#  - sub_15047c2e(?)
#  - sub_2258937e(?)
#
const sub_0550473d(?) = 995

const sub_3b887357(?) = 500

const wBNB = 0x4068da6c83afcfa0e13ba15a6696662335d5b


address owner;
uint256 stor1;
address swapRouterAddress;
uint256 sub_ad56d79f;
uint8 sub_3c799acb;
address feesCollectorAddress; offset 8
uint256 slippageFactor;

function sub_3c799acb(?) {
    return bool(sub_3c799acb)
}

function owner() {
    return owner
}

function feesCollector() {
    return feesCollectorAddress
}

function sub_ad56d79f(?) {
    return sub_ad56d79f
}

function swapRouter() {
    return swapRouterAddress
}

function slippageFactor() {
    return slippageFactor
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAutoBuyBack(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    sub_3c799acb = uint8(arg1)
    emit AutoBuyBack(bool(uint8(arg1)));
    stor1 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFeesBP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x72466565644c50436f6e76657274657228736574466565734250293a206665657320626173697320706f696e74732065786365656473207468726573686f6c,
                    mem[227 len 1]
    sub_ad56d79f = arg1
    emit FeesBPChanged(arg1);
    stor1 = 1
}

function setFeesCollector(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x64466565644c50436f6e7665727465722873657446656573436f6c6c6563746f72293a206665657320636f6c6c6563746f722063616e6e6f74206265207a65726f20616464726573,
                    mem[236 len 24]
    feesCollectorAddress = arg1
    emit FeesCollectorChanged(address arg1):
                              0,
                              arg1,
    stor1 = 1
}



}
