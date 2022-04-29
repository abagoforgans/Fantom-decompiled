contract main {




// =====================  Runtime code  =====================


address owner;
address nebulaAddress;
address oracleRouterAddress;
mapping of uint8 stor3;

function nebula() payable {
    return nebulaAddress
}

function oracleRouter() payable {
    return oracleRouterAddress
}

function owner() payable {
    return owner
}

function sub_9790dcd2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(136, 120, arg1)
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function setNebula(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    nebulaAddress = arg1
}

function setRouterContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    oracleRouterAddress = arg1
}

function attachValue(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if nebulaAddress != msg.sender:
        revert with 0, 'Caller is not nebula'
    if arg1.length != 200:
    idx = 0
    while idx < 16:
        if idx and 8 > -1 / idx:
            revert with 'NH{q', 17
        if 0 > -idx - 1:
            revert with 'NH{q', 17
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if stor3[0]:
    stor3[0] = 1
    require 19 <= arg1.length
    if var77002 < 39:
        if var79001 >= arg1.length:
            revert with 'NH{q', 50
        # nil
    else:
        if 39 >= arg1.length:
            revert with 'NH{q', 50
        if 31 >= ceil32(arg1.length) + 32:
            revert with 'NH{q', 50
        if sha3(0) != sha3(0):
        idx = 0
        while idx < 32:
            if idx and 8 > -1 / idx:
                revert with 'NH{q', 17
            if 40 > -idx - 1:
                revert with 'NH{q', 17
            if idx + 40 >= arg1.length:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require 72 <= arg1.length
        require arg1.length <= arg1.length
        if var134002 < 32:
            if var136001 >= arg1.length - 72:
                revert with 'NH{q', 50
            # nil
        else:
            require 104 <= arg1.length
            require arg1.length <= arg1.length
            # nil
}



}
