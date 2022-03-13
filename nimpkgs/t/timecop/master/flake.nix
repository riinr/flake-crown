{
  description = ''Time travelling for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timecop-master.flake = false;
  inputs.src-timecop-master.owner = "ba0f3";
  inputs.src-timecop-master.ref   = "refs/heads/master";
  inputs.src-timecop-master.repo  = "timecop.nim";
  inputs.src-timecop-master.type  = "github";
  
  inputs."subhook".owner = "nim-nix-pkgs";
  inputs."subhook".ref   = "master";
  inputs."subhook".repo  = "subhook";
  inputs."subhook".type  = "github";
  inputs."subhook".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subhook".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timecop-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-timecop-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}