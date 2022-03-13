{
  description = ''Bindings for the Thalmic Labs Myo gesture control armband SDK.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-myo-master.flake = false;
  inputs.src-myo-master.owner = "nimious";
  inputs.src-myo-master.ref   = "refs/heads/master";
  inputs.src-myo-master.repo  = "myo";
  inputs.src-myo-master.type  = "github";
  
  inputs."nimrod".owner = "nim-nix-pkgs";
  inputs."nimrod".ref   = "master";
  inputs."nimrod".repo  = "nimrod";
  inputs."nimrod".type  = "github";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-myo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-myo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}