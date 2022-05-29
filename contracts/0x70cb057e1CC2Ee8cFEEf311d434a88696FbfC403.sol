contract main {




// =====================  Runtime code  =====================


#
#  - sub_5d862250(?)
#  - sub_f06b21cc(?)
#
const factor = 10000


uint32 stor0;
address owner;
uint256 stor0;
mapping of uint8 stor2;
mapping of struct sub_bf7c63f3;
address USDAddress;
address sub_ab53a6a4Address;

function USD() {
    return USDAddress
}

function owner() {
    return address(owner)
}

function approvals(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[arg1][arg2])
}

function sub_ab53a6a4(?) {
    return sub_ab53a6a4Address
}

function sub_bf7c63f3(?) {
    require calldata.size - 4 >= 32
    return bool(sub_bf7c63f3[arg1].field_0), sub_bf7c63f3[arg1].field_256, sub_bf7c63f3[arg1].field_512
}

function _fallback() payable {
    revert
}

function createProcessor(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    return sha3(arg1, arg2, arg3, arg4)
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recoverEther() {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address):
        call address(owner) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Recovered(0, eth.balance(this.address));
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function recoverERC20(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call arg1 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
            if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit Recovered(address(arg1), ext_call.return_data[0]);
}



}
