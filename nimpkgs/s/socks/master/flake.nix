{
  description = ''Socks5 client and server library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-socks-master.flake = false;
  inputs.src-socks-master.ref   = "refs/heads/master";
  inputs.src-socks-master.owner = "FedericoCeratto";
  inputs.src-socks-master.repo  = "nim-socks5";
  inputs.src-socks-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-socks-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-socks-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}