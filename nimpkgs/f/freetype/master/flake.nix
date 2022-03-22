{
  description = ''FreeType2 library wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-freetype-master.flake = false;
  inputs.src-freetype-master.ref   = "refs/heads/master";
  inputs.src-freetype-master.owner = "jangko";
  inputs.src-freetype-master.repo  = "freetype";
  inputs.src-freetype-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-freetype-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-freetype-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}