contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address token_address; offset 8
uint256 stor1;
uint256 sub_86754adf;
address owner;

function is_active() {
    return bool(uint8(stor1.field_0))
}

function sub_6ea18308(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[address(arg1)])
}

function sub_86754adf(?) {
    return sub_86754adf
}

function token_address() {
    return token_address
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_42106c43(?) {
    if owner != msg.sender:
        revert with 0, 'Not Allowed'
    uint256(stor1.field_0) = not bool(uint8(stor1.field_0)) or Mask(248, 8, uint256(stor1.field_0))
}

function get_balance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_44b431b3(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Not Allowed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b2fb33c6(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Not Allowed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6b3af9a9(?) {
    if not uint8(stor1.field_0):
        revert with 0, 'Airdrop Distribution is paused'
    if not stor0[address(msg.sender)]:
        revert with 0, 'You have 0 tokens to claim'
    require ext_code.size(token_address)
    staticcall token_address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_86754adf:
        revert with 0, 'No tokens available in stock'
    require ext_code.size(token_address)
    call token_address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_86754adf
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit AirdropClaimed(msg.sender, sub_86754adf);
    stor0[address(msg.sender)] = 0
}

function sub_0fd8d607(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not Allowed'
    require ext_code.size(token_address)
    staticcall token_address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        sub_86754adf = arg1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                revert with 'NH{q', 17
            sub_86754adf = arg1 * 10^ext_call.return_data[31 len 1]
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and t * s > -1 / arg1:
                revert with 'NH{q', 17
            sub_86754adf = arg1 * t * s
}



}
