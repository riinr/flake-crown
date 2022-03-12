{
  description = ''Converts ANSI colour codes to HTML span tags with style tags'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ansitohtml-master.flake = false;
  inputs.src-ansitohtml-master.owner = "PMunch";
  inputs.src-ansitohtml-master.ref   = "refs/heads/master";
  inputs.src-ansitohtml-master.repo  = "ansitohtml";
  inputs.src-ansitohtml-master.type  = "github";
  
  inputs."ansiparse".owner = "nim-nix-pkgs";
  inputs."ansiparse".ref   = "master";
  inputs."ansiparse".repo  = "ansiparse";
  inputs."ansiparse".type  = "github";
  inputs."ansiparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ansitohtml-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ansitohtml-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}