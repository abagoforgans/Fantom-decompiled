contract main {




// =====================  Runtime code  =====================


#
#  - payRake(uint256 arg1)
#
const want = 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb

const sub_485a9e57(?) = 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb

const balance = ext_call.return_data[0]


address owner;
uint256 stor1;
address stor2;
address stor3;
address treasuryAddress;
address deadAddress;
uint256 devFee;
uint256 lpFee;
uint256 burnFee;
uint256 divisor;
array of struct stor10;

function divisor() payable {
    return divisor
}

function deadAddress() payable {
    return deadAddress
}

function treasury() payable {
    return treasuryAddress
}

function devFee() payable {
    return devFee
}

function lpFee() payable {
    return lpFee
}

function owner() payable {
    return owner
}

function burnFee() payable {
    return burnFee
}

function _fallback() payable {
    revert
}

function sub_167e7165(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 6
    if not stor10[arg1].field_160:
        return 0
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDealer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function setDeadAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    deadAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function sub_9d8e356f(?) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0, '!dealer'
    require arg1 < 6
    stor10[arg1].field_160 = 0
    stor10[arg1].field_0 = 0
    emit 0x1bad3434: stor2
}

function sub_dbf6c3dd(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 40
    require arg2 <= 40
    require arg3 <= 40
    devFee = arg1
    lpFee = arg2
    burnFee = arg3
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

function sub_4de13068(?) payable {
    require ext_code.size(0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb)
    call 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb)
    call 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e2d94793(?) payable {
    require calldata.size - 4 >= 64
    stor1++
    if arg1 != 200:
        revert with 0, 'must deposit 200 REAPER'
    require arg2 < 6
    require not stor10[arg2].field_160
    if ext_code.size(0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 10^18 * arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb with:
         gas gas_remaining wei
        args Mask(224, 32, 10^18 * arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 10^18 * arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require arg2 < 6
    stor10[arg2].field_0 = msg.sender
    stor10[arg2].field_160 = 1
    emit 0x4a90fb1d: msg.sender
    require stor1 == stor1
}

function pay(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor2 != msg.sender:
        revert with 0, '!dealer'
    require ext_code.size(0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb)
    staticcall 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < 6
    if ext_call.return_data[0] >= 10^18 * arg1:
        if ext_code.size(0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), stor10[arg2].field_0, stor10[arg2].field_0, Mask(224, 32, 10^18 * arg1) >> 32
        mem[324 len 0] = 0
        call 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb with:
           funct stor10[arg2].field_0
             gas gas_remaining wei
            args Mask(224, 32, 10^18 * arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), stor10[arg2].field_0, stor10[arg2].field_0, 10^18 * arg1
            if not unknown_0xa9059cbb(?????), stor10[arg2].field_0:
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
    else:
        require ext_code.size(0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb)
        staticcall 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_code.size(0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), stor10[arg2].field_0, stor10[arg2].field_0, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call 0x117db78176c8ede4f12fcd29d85cd96b91a4cbbb with:
           funct stor10[arg2].field_0
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), stor10[arg2].field_0, stor10[arg2].field_0, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), stor10[arg2].field_0:
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
    require arg2 < 6
    stor10[arg2].field_160 = 0
    stor10[arg2].field_0 = 0
    emit 0x1bad3434: stor2
}



}
