{
  description = ''apt for SHARP Brain'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-apt_brain-BETAv2_0.flake = false;
  inputs.src-apt_brain-BETAv2_0.ref   = "refs/tags/BETAv2.0";
  inputs.src-apt_brain-BETAv2_0.owner = "genkaisoft";
  inputs.src-apt_brain-BETAv2_0.repo  = "apt-brain";
  inputs.src-apt_brain-BETAv2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-apt_brain-BETAv2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-apt_brain-BETAv2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}