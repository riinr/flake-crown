{
  description = ''Bindings for the Oculus VR SDK.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-oculus-master.flake = false;
  inputs.src-oculus-master.owner = "nimious";
  inputs.src-oculus-master.ref   = "refs/heads/master";
  inputs.src-oculus-master.repo  = "oculus";
  inputs.src-oculus-master.type  = "github";
  
  inputs."nimrod".owner = "nim-nix-pkgs";
  inputs."nimrod".ref   = "master";
  inputs."nimrod".repo  = "nimrod";
  inputs."nimrod".type  = "github";
  inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-oculus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-oculus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}