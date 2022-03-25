{
  description = ''Too awesome procs to be included in nimrod.os module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genieos-v9_0_0-taeyeon.flake = false;
  inputs.src-genieos-v9_0_0-taeyeon.ref   = "refs/tags/v9.0.0-taeyeon";
  inputs.src-genieos-v9_0_0-taeyeon.owner = "Araq";
  inputs.src-genieos-v9_0_0-taeyeon.repo  = "genieos";
  inputs.src-genieos-v9_0_0-taeyeon.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-v9_0_0-taeyeon"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-genieos-v9_0_0-taeyeon";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}