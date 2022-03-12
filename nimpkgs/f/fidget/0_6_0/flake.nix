{
  description = ''Figma based UI library for nim, with HTML and OpenGL backends.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-fidget-0_6_0.flake = false;
  inputs.src-fidget-0_6_0.owner = "treeform";
  inputs.src-fidget-0_6_0.ref   = "refs/tags/0.6.0";
  inputs.src-fidget-0_6_0.repo  = "fidget";
  inputs.src-fidget-0_6_0.type  = "github";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."typography".dir   = "nimpkgs/t/typography";
  inputs."typography".owner = "riinr";
  inputs."typography".ref   = "flake-pinning";
  inputs."typography".repo  = "flake-nimble";
  inputs."typography".type  = "github";
  inputs."typography".inputs.nixpkgs.follows = "nixpkgs";
  inputs."typography".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pixie".dir   = "nimpkgs/p/pixie";
  inputs."pixie".owner = "riinr";
  inputs."pixie".ref   = "flake-pinning";
  inputs."pixie".repo  = "flake-nimble";
  inputs."pixie".type  = "github";
  inputs."pixie".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pixie".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."vmath".dir   = "nimpkgs/v/vmath";
  inputs."vmath".owner = "riinr";
  inputs."vmath".ref   = "flake-pinning";
  inputs."vmath".repo  = "flake-nimble";
  inputs."vmath".type  = "github";
  inputs."vmath".inputs.nixpkgs.follows = "nixpkgs";
  inputs."vmath".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."print".dir   = "nimpkgs/p/print";
  inputs."print".owner = "riinr";
  inputs."print".ref   = "flake-pinning";
  inputs."print".repo  = "flake-nimble";
  inputs."print".type  = "github";
  inputs."print".inputs.nixpkgs.follows = "nixpkgs";
  inputs."print".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".dir   = "nimpkgs/o/opengl";
  inputs."opengl".owner = "riinr";
  inputs."opengl".ref   = "flake-pinning";
  inputs."opengl".repo  = "flake-nimble";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."html5_canvas".dir   = "nimpkgs/h/html5_canvas";
  inputs."html5_canvas".owner = "riinr";
  inputs."html5_canvas".ref   = "flake-pinning";
  inputs."html5_canvas".repo  = "flake-nimble";
  inputs."html5_canvas".type  = "github";
  inputs."html5_canvas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."html5_canvas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."staticglfw".dir   = "nimpkgs/s/staticglfw";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".ref   = "flake-pinning";
  inputs."staticglfw".repo  = "flake-nimble";
  inputs."staticglfw".type  = "github";
  inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."supersnappy".dir   = "nimpkgs/s/supersnappy";
  inputs."supersnappy".owner = "riinr";
  inputs."supersnappy".ref   = "flake-pinning";
  inputs."supersnappy".repo  = "flake-nimble";
  inputs."supersnappy".type  = "github";
  inputs."supersnappy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."supersnappy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-fidget-0_6_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-fidget-0_6_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}