{
  description = ''Nim framework for VK'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-saya-master.flake = false;
  inputs.src-saya-master.ref   = "refs/heads/master";
  inputs.src-saya-master.owner = "Ethosa";
  inputs.src-saya-master.repo  = "saya_nim";
  inputs.src-saya-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-saya-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-saya-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}