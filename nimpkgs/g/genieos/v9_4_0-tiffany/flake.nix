{
  description = ''Too awesome procs to be included in nimrod.os module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genieos-v9_4_0-tiffany.flake = false;
  inputs.src-genieos-v9_4_0-tiffany.ref   = "refs/tags/v9.4.0-tiffany";
  inputs.src-genieos-v9_4_0-tiffany.owner = "Araq";
  inputs.src-genieos-v9_4_0-tiffany.repo  = "genieos";
  inputs.src-genieos-v9_4_0-tiffany.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genieos-v9_4_0-tiffany"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-genieos-v9_4_0-tiffany";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}