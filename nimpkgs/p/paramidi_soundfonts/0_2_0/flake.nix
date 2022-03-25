{
  description = ''Sound fonts for paramidi'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-paramidi_soundfonts-0_2_0.flake = false;
  inputs.src-paramidi_soundfonts-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-paramidi_soundfonts-0_2_0.owner = "paranim";
  inputs.src-paramidi_soundfonts-0_2_0.repo  = "paramidi_soundfonts";
  inputs.src-paramidi_soundfonts-0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-paramidi_soundfonts-0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-paramidi_soundfonts-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}