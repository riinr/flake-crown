{
  description = ''POP3 client library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pop3-master.flake = false;
  inputs.src-pop3-master.ref   = "refs/heads/master";
  inputs.src-pop3-master.owner = "FedericoCeratto";
  inputs.src-pop3-master.repo  = "nim-pop3";
  inputs.src-pop3-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pop3-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pop3-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}